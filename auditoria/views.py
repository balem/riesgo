# Create your views here.
from auditoria.models import HojaControl, Variable, Resultado, Pac, Resolucion, Documentos, Circuito
from auditoria.form import ResultadoForm, LoginForm, HojaControlForm, IdentificadorForm, CaracterForm, ModlidadForm, PacForm, ResolucionForm, DocumentosForm, UserForm
from django.shortcuts import render_to_response
from django.contrib.auth.models import User
from django.template import RequestContext
from django.http import HttpResponse
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.decorators import login_required
from django.http import HttpResponseRedirect
from django.db import connection
import ho.pisa as pisa
import cStringIO as StringIO
import cgi, re, MySQLdb
from django.template.loader import render_to_string
from django.shortcuts import get_object_or_404
from django.core import serializers
from dajaxice.utils import deserialize_form
from dajaxice.decorators import dajaxice_register
from wkhtmltopdf.views import PDFTemplateResponse

@login_required(login_url='/login')
def mostrar_encuestas(request):
	if request.user.is_superuser:
		hoja = HojaControl.objects.filter(activa='activo')
	else:
		hoja = HojaControl.objects.filter(activa='activo' , usuario=request.user.id)
	return render_to_response('mostrar_encuestas.html', {'hoja':hoja}, context_instance=RequestContext(request) )

@login_required(login_url='/login')
def mostrar_informes(request):
	hoja = HojaControl.objects.filter(activa= 'Inactivo')
	return render_to_response('listar_informes.html', {'hoja':hoja}, context_instance=RequestContext(request) )

@login_required(login_url='/login')
def ver_hoja(request, encuesta_id):
	hojas = HojaControl.objects.filter(id=encuesta_id, activa='Inactivo')
	pac = Pac.objects.get(hojacontrol=hojas)
	variables = Resultado.objects.filter(hoja_id=encuesta_id)
	ctx = {'hojas': hojas, 'variables':variables, 'pac': pac }
	return render_to_response('hoja_informe.html', ctx, context_instance=RequestContext(request))

@login_required(login_url='/login')
def add_hoja(request, encuesta_id):
	hojas = HojaControl.objects.get(id=encuesta_id)
	circuito_id = hojas.circuito.id
	template = 'add_hoja.html'
	#solo se debe ejecutar una vez, es lamado para cargar las variables a la tabla de resultados
	resultados_nuevo(hojas.id, circuito_id)
	if request.user.is_superuser or hojas.usuario.id == request.user.id:
		hojas = HojaControl.objects.filter(id=encuesta_id)
		variables = Resultado.objects.filter(circuito_id=circuito_id)
		observacion = {}
		if request.method == 'POST':
			formulario = []
			for key in request.POST.iterkeys():
				valuelist = request.POST.getlist(key)
				valuelist.sort()
				formulario.extend(['%s=%s' % (key, val) for val in valuelist])
				if re.match("[0-9999]+observacion", key) and key != 'csrfmiddlewaretoken':
					a = key.split('observacion')
					resultados_observacion(circuito_id, encuesta_id, a[0], val)
				elif key != 'csrfmiddlewaretoken' and key != 'enviar-mark':
					resultado_update(circuito_id, encuesta_id, key, val)
				if key == 'enviar-mark' and val == 'on':
					desactivar_hoja(request, encuesta_id)
			return render_to_response('datos.html', { 'formulario': formulario, 'observacion':observacion}, context_instance=RequestContext(request))
		else:
			formulario = ResultadoForm()
			if HojaControl.objects.get(pk=encuesta_id).activa == 'Inactivo':
				template = 'add_hoja_if.html'
		ctx = {'hojas': hojas, 'variables':variables, 'formulario': formulario}
	else:
		template = 'no-user.html'
		ctx = {}
	return render_to_response(template, ctx, context_instance=RequestContext(request))

def resultados_nuevo(hoja_id, circuito_id):
	if(Resultado.objects.filter(circuito_id = circuito_id, hoja_id=hoja_id).count() == 0):
		circuito = Circuito.objects.get(pk=circuito_id)
		for var in circuito.variables.all():
			resultados = Resultado.objects.create(circuito_id=circuito_id, variable_id=var.id, hoja_id=hoja_id, valor=0)
			resultados.save()

def resultado_update(circuito_id, encuesta_id, variable, valores):
	if(Resultado.objects.filter(circuito_id = circuito_id, variable_id = variable, hoja_id=encuesta_id).count() > 0): 
		resultados = Resultado.objects.get(circuito_id = circuito_id, variable_id = variable, hoja_id=encuesta_id)
		resultados.valor = valores
	else:
		resultados = Resultado.objects.create(circuito_id = circuito_id, variable_id = variable, hoja_id=encuesta_id, valor=valores)
	resultados.save()

def resultados_observacion(circuito_id, encuesta_id, variable, observacion):
	if(Resultado.objects.filter(circuito_id = circuito_id, variable_id = variable, hoja_id=encuesta_id).count() > 0): 
		resultados = Resultado.objects.get(circuito_id = circuito_id, variable_id = variable, hoja_id=encuesta_id)
		resultados.observacion = observacion
	else:
		resultados = Resultado.objects.create(hoja_id=encuesta_id, circuito_id=circuito_id, variable_id=variable, valor=0)
	resultados.save()

def ingresar(request):
	mensaje = ""
	if request.user.is_authenticated():
		return HttpResponseRedirect('/')
	else: 
		if request.method == 'POST':
			form = LoginForm(request.POST)
			if form.is_valid():
				username = form.cleaned_data['username']
				password = form.cleaned_data['password']
				usuario = authenticate(username = username, password = password)
				if usuario is not None and usuario.is_active:
					login(request, usuario)
					return HttpResponseRedirect('/')
				else:
					mensaje = 'usuario y/o clave incorrecto'
		form = LoginForm()
		ctx = {'form': form, 'mensaje': mensaje}
		return render_to_response('login.html', ctx, context_instance=RequestContext(request))

def salir(request):
	logout(request)
	return HttpResponseRedirect('/login')

@login_required(login_url='/login')
def desactivar_hoja(request, encuesta_id):
	hoja = HojaControl.objects.get(id=encuesta_id)
	hoja.activa = 'Inactivo'
	hoja.save()

def generar_pdf(html):
    result = StringIO.StringIO()
    pdf = pisa.pisaDocument(StringIO.StringIO(html.encode("UTF-8")), result)
    if not pdf.err:
        return HttpResponse(result.getvalue(), mimetype='application/pdf')
    return HttpResponse('Error al generar el PDF: %s' % cgi.escape(html))

@login_required(login_url='/login')
def hoja_pdf(request, id):
    hoja=get_object_or_404(HojaControl, id=id)
    html = render_to_string('hoja_pdf.html', {'pagesize':'A4', 'hoja':hoja}, context_instance=RequestContext(request))
    return generar_pdf(html)

@login_required(login_url='/login')
def base(request):
	ctx = {}
	return render_to_response('base.html', ctx, context_instance=RequestContext(request))

@login_required(login_url='/login')
def ver_hoja_pdf(request, id):
	hojas = get_object_or_404(HojaControl, id=id)
	circuito = HojaControl.objects.get(id=id).circuito.id
	variables = Resultado.objects.filter(circuito_id=circuito)
	obt = total_variable(id)
	resultado = {}
	resultado = total_variable(circuito)
	ctx = {'hojas': hojas, 'variables':variables, 'pagesize':'A4', 'resultado':resultado }
	html = render_to_string('hoja_pdf.html', ctx, context_instance=RequestContext(request))
	return generar_pdf(html)

def total_variable(hoja_id):
	res = {}
	sql = 'SELECT sum(valor_total) FROM vresultados where hoja_id = '+str(hoja_id)
	con = connection.cursor()
	con.execute(sql)
	res['puntos_otenidos'] = con.fetchone()
	sql = 'SELECT sum(valor_obtenido) as suma FROM vresultados Where hoja_id='+str(hoja_id)
	con = connection.cursor()
	con.execute(sql)
	res['puntos_totales'] = con.fetchone()
	sql = 'SELECT SUM(valor_obtenido)*100/sum(valor_total) as porcentaje FROM vresultados where hoja_id='+str(hoja_id)
	con = connection.cursor()
	con.execute(sql)
	res['porcentje'] = con.fetchone()
	return res

#def obtener_pac(request):
#	if request.POST:
#		resolucion_id = request.POST.get('resolucion_id')
#		resolucion = Resolucion.objects.get(id = int(resolucion_id))
#		pacs = Pac.objects.filter(resolucion = resolucion)
#		data = serializers.serialize("json", pacs, fields=('id', 'descripcion'))
#	return HttpResponse(data, mimetype="application/javascript")

@dajaxice_register
def send_pac(request, form):
	dajax = Dajax(form = HojaControlForm(deserialize_form(form)))
	if form.is_valid():
		dajax.alert('ando')
	return dajax.json()


@login_required(login_url='/login')
def add_hoja_control(request):
	if request.method == 'POST':
		formulario = HojaControlForm(request.POST)
		#datos = obtener_pac(request)
		if(formulario.is_valid()):
			formulario.save()
			return HttpResponseRedirect('/hoja')
	else:
		formulario = HojaControlForm()
	return render_to_response('add_hoja_control.html', {'formulario': formulario}, context_instance=RequestContext(request))

@login_required(login_url='/login')
def add_identificador(request):
	if request.method == 'POST':
		formulario = IdentificadorForm(request.POST)
		if(formulario.is_valid()):
			formulario.save()
			return HttpResponseRedirect('/hoja')
	else:
		formulario = IdentificadorForm()
	return render_to_response('add_identificador.html', {'formulario': formulario}, context_instance=RequestContext(request))

@login_required(login_url='/login')
def add_caracter(request):
	if request.method == 'POST':
		formulario = CaracterForm(request.POST)
		if(formulario.is_valid()):
			formulario.save()
			return HttpResponseRedirect('/hoja')
	else:
		formulario = CaracterForm()
	return render_to_response('add_caracter.html', {'formulario': formulario}, context_instance=RequestContext(request))

@login_required(login_url='/login')
def add_pac(request):
	if request.method == 'POST':
		formulario = PacForm(request.POST)
		if(formulario.is_valid()):
			formulario.save()
			return HttpResponseRedirect('/resolucion')
	else:
		formulario = PacForm()
	return render_to_response('add_pac.html', {'formulario': formulario}, context_instance=RequestContext(request))

@login_required(login_url='/login')
def add_resolucion(request):
	if request.method == 'POST':
		formulario = ResolucionForm(request.POST)
		if(formulario.is_valid()):
			formulario.save()
			return HttpResponseRedirect('/resolucion')
	else:
		formulario = ResolucionForm()
	return render_to_response('add_resolucion.html', {'formulario': formulario}, context_instance=RequestContext(request))

@login_required(login_url='/login')
def mostrar_resoluciones(request):
	resolucion = Resolucion.objects.all()
	return render_to_response('listar_resoluciones.html', {'resolucion':resolucion}, context_instance=RequestContext(request) )

@login_required(login_url='/login')
def mostrar_pacs(request, resolucion_id):
	pac = Pac.objects.filter(resolucion_id = resolucion_id).order_by('numero')
	resolucion = Resolucion.objects.filter(id = resolucion_id)
	return render_to_response('listar_pac.html', {'pac': pac, 'resolucion': resolucion}, context_instance=RequestContext(request))

@login_required(login_url='/login')
def mostrar_documentos(request):
	documentos = Documentos.objects.all()
	return render_to_response('listar_documentos.html', {'documentos':documentos}, context_instance=RequestContext(request) )

@login_required(login_url='/login')
def mostrar_resoluciones_pdf(request):
	resolucion = Resolucion.objects.all()
	return PDFTemplateResponse(request,'listar_resoluciones.html', {'resolucion':resolucion})

@login_required(login_url='/login')
def editar_perfil(request):
	if request.method == 'POST':
		user_form = UserForm(request.POST, instance=request.user)
		if user_form.is_valid():
			# formulario validado correctamente
			user_form.save()
			return HttpResponseRedirect('/formulario-guardado/')
	else:
		# formulario inicial
		user_form = UserForm(instance=request.user)
	return render_to_response('editar_perfil.html', { 'user_form': user_form}, context_instance=RequestContext(request))