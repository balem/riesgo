# Create your views here.
from auditoria.models import HojaControl, Variable, Resultado
from auditoria.form import ResultadoForm, LoginForm
from django.shortcuts import render_to_response
from django.template import RequestContext
from django.http import HttpResponse
from django.forms import ModelForm
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.decorators import login_required
from django.http import HttpResponseRedirect
import MySQLdb

@login_required(login_url='/login')
def mostrar_encuestas(request):
	hoja = HojaControl.objects.all()
	return render_to_response('mostrar_encuestas.html', {'hoja':hoja}, context_instance=RequestContext(request) )

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
		return render_to_response('datos.html', { 'formulario': formulario}, context_instance=RequestContext(request))
	else:
		formulario = ResultadoForm()
	ctx = {'hojas': hojas, 'variables':variables, 'formulario': formulario}
	return render_to_response('add_hoja.html', ctx, context_instance=RequestContext(request))

@login_required(login_url='/login')
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