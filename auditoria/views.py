# Create your views here.
from auditoria.models import HojaControl, Variable, Resultado
from auditoria.form import ResultadoForm, LoginForm
from django.shortcuts import render_to_response
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

@login_required(login_url='/login')
def mostrar_encuestas(request):
	hoja = HojaControl.objects.filter(activa='activo')
	return render_to_response('mostrar_encuestas.html', {'hoja':hoja}, context_instance=RequestContext(request) )

@login_required(login_url='/login')
def mostrar_informes(request):
	hoja = HojaControl.objects.filter(activa= 'Inactivo')
	return render_to_response('listar_informes.html', {'hoja':hoja}, context_instance=RequestContext(request) )

@login_required(login_url='/login')
def ver_hoja(request, encuesta_id):
	hojas = HojaControl.objects.filter(id=encuesta_id, activa='Inactivo')
	variables = Resultado.objects.filter(hoja_id=encuesta_id)
	ctx = {'hojas': hojas, 'variables':variables }
	return render_to_response('hoja_informe.html', ctx, context_instance=RequestContext(request))

@login_required(login_url='/login')
def add_hoja(request, encuesta_id):
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
	return render_to_response('add_hoja.html', ctx, context_instance=RequestContext(request))

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
	sql = 'SELECT ((SELECT sum(valor) FROM auditoria_resultado where hoja_id =1)*100/sum(valor)) as porcentaje FROM 	auditoria_variable a inner join auditoria_hojacontrol_variables hj on hj.variable_id = a.id and hj.hojacontrol_id ='+hoja_id
	con = connection.cursor()
	con.execute(sql)
	res['porcentje'] = con.fetchone()
	return res
