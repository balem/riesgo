#encoding:utf-8
from django.forms import ModelForm
from django import forms
from django.contrib.auth.models import User
from auditoria.models import HojaControl, Resultado

#class EncuestaForm(ModelForm):
#    class Meta:
#        model = HojaControl
#
#class EncuestaForm(ModelForm):
#    class Meta:
#        model = HojaControl
class ResultadoForm(forms.ModelForm):
	class Meta:
		model = Resultado

class LoginForm(forms.Form):
	username = forms.CharField(widget=forms.TextInput({ "placeholder": "Usuario"}))
	password = forms.CharField(widget=forms.PasswordInput(attrs={'placeholder': 'Clave'}))