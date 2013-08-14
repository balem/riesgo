# Create your views here.
from auditoria.models import HojaControl, Variable, Resultado
from auditoria.form import ResultadoForm, LoginForm
from django.shortcuts import render_to_response
from django.template import RequestContext
from django.http import HttpResponse
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.decorators import login_required
from django.http import HttpResponseRedirect
import ho.pisa as pisa
import cStringIO as StringIO
import cgi
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
	if request.method == 'POST':
		formulario = []
		for key in request.POST.iterkeys():
			valuelist = request.POST.getlist(key)
			formulario.extend(['%s=%s' % (key, val) for val in valuelist])
			if key != 'csrfmiddlewaretoken' and key != 'enviar-mark' and val != 0 and val and 'null':
				resultado_update(encuesta_id, key, val)
			if key == 'enviar-mark' and val == 'on':
				desactivar_hoja(request, encuesta_id)
		return render_to_response('datos.html', { 'formulario': formulario}, context_instance=RequestContext(request))
	else:
		formulario = ResultadoForm()
	ctx = {'hojas': hojas, 'variables':variables, 'formulario': formulario}
	return render_to_response('add_hoja.html', ctx, context_instance=RequestContext(request))

def resultado_update(hoja_id, variable_id, valor):
	resultados = Resultado.objects.get(hoja = hoja_id, variable = variable_id)
	resultados.valor = valor
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
def ver_hoja_pdf(request, encuesta_id):
	hojas = get_object_or_404(HojaControl, id=encuesta_id)
	variables = Resultado.objects.filter(hoja_id=encuesta_id)
	ctx = {'hojas': hojas, 'variables':variables }
	html = render_to_response('hoja_informe.html', ctx, context_instance=RequestContext(request))
	return generar_pdf(html)