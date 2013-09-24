# Create your views here.
from auditoria.models import HojaControl, Variable, Resultado, Pac, Resolucion, Documentos
from auditoria.form import ResultadoForm, LoginForm, HojaControlForm, IdentificadorForm, CaracterForm, ModlidadForm, PacForm, ResolucionForm, DocumentosForm
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
	template = 'add_hoja.html'
	if request.user.is_superuser or hojas.usuario.id == request.user.id:
		hojas = HojaControl.objects.filter(id=encuesta_id)
		variables = Resultado.objects.filter(hoja_id=encuesta_id)
		observacion = {}
		if request.method == 'POST':
			formulario = []
			for key in request.POST.iterkeys():
				valuelist = request.POST.getlist(key)
				valuelist.sort()
				formulario.extend(['%s=%s' % (key, val) for val in valuelist])
				if re.match("[0-9999]+observacion", key) and key != 'csrfmiddlewaretoken':
					a = key.split('observacion')
					resultados_observacion(encuesta_id, a[0], val)
				elif key != 'csrfmiddlewaretoken' and key != 'enviar-mark':
					resultado_update(encuesta_id, key, val)
				if key == 'enviar-mark' and val == 'on':
					desactivar_hoja(request, encuesta_id)
			return render_to_response('datos.html', { 'formulario': formulario, 'observacion':observacion}, context_instance=RequestContext(request))
		else:
			formulario = ResultadoForm()
		ctx = {'hojas': hojas, 'variables':variables, 'formulario': formulario}
	else:
		template = 'no-user.html'
		ctx = {}
	return render_to_response(template, ctx, context_instance=RequestContext(request))

def resultado_update(hoja_id, variable, valores):
		resultados = Resultado.objects.get(hoja = hoja_id, variable = variable)
		resultados.valor = valores
		resultados.save()

def resultados_observacion(hoja_id, variable, observacion):
		resultados = Resultado.objects.get(hoja = hoja_id, variable = variable)
		resultados.observacion = observacion
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
	variables = Resultado.objects.filter(hoja_id=id)
	obt = total_variable(id)
	resultado = {}
	resultado = total_variable(id)
	ctx = {'hojas': hojas, 'variables':variables, 'pagesize':'A4', 'resultado':resultado }
	html = render_to_string('hoja_pdf.html', ctx, context_instance=RequestContext(request))
	return generar_pdf(html)

def total_variable(hoja_id):
	res = {}
	sql = 'SELECT sum(valor) FROM auditoria_resultado where hoja_id ='+hoja_id
	con = connection.cursor()
	con.execute(sql)
	res['puntos_otenidos'] = con.fetchone()
	sql = 'SELECT sum(valor) as suma FROM  auditoria_variable a inner join auditoria_hojacontrol_variables hj on hj.variable_id = a.id and hj.hojacontrol_id ='+hoja_id
	con = connection.cursor()
	con.execute(sql)
	res['puntos_totales'] = con.fetchone()
	sql = 'SELECT ((SELECT sum(valor) FROM auditoria_resultado where hoja_id ='+hoja_id+')*100/sum(valor)) as porcentaje FROM 	auditoria_variable a inner join auditoria_hojacontrol_variables hj on hj.variable_id = a.id and hj.hojacontrol_id ='+hoja_id
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