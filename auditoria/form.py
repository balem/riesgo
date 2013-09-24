#encoding:utf-8
from django.forms import ModelForm
from django import forms
from django.contrib.auth.models import User
from auditoria.models import HojaControl, Resultado, Identificador, Resolucion, Caracter, Modlidad, Pac, Documentos
from django.forms import CheckboxSelectMultiple

class HojaControlForm(forms.ModelForm):
	"""docstring for HojaControlForm"""
	class Meta:
		widgets = {'variables': forms.CheckboxSelectMultiple}
		model = HojaControl	
		
class ResultadoForm(forms.ModelForm):
	class Meta:
		model = Resultado

class IdentificadorForm(forms.ModelForm):
	class Meta:
		model = Identificador

class ResolucionForm(forms.ModelForm):
	"""docstring for Resolucion"""
	class Meta:
		model = Resolucion

class LoginForm(forms.Form):
	username = forms.CharField(widget=forms.TextInput({ "placeholder": "Usuario"}))
	password = forms.CharField(widget=forms.PasswordInput(attrs={'placeholder': 'Clave'}))

class CaracterForm(forms.ModelForm):
	"""docstring for Caracter"""
	class Meta:
		model = Caracter

class ModlidadForm(forms.ModelForm):
	"""docstring for ModlidadForm"""
	class Meta:
		model = Modlidad

class PacForm(forms.ModelForm):
	"""docstring for PacForm"""
	class Meta:
		model = Pac

class DocumentosForm(object):
	"""docstring for DocumentosForm"""
	class Meta:
		model = Documentos