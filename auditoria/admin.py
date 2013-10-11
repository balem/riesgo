from auditoria.models import Circuito, HojaControl, Factor, Indicador, Proceso, Variable, Area, Circunscripcion, Resultado, Identificador, Resolucion, Caracter, Modlidad, Pac, Documentos
from django.contrib import admin
from django.db import models
from django.forms import CheckboxSelectMultiple

admin.site.register(HojaControl)
admin.site.register(Circunscripcion)
admin.site.register(Area)
admin.site.register(Proceso)
admin.site.register(Factor)
admin.site.register(Resolucion)
admin.site.register(Caracter)
admin.site.register(Modlidad)
admin.site.register(Identificador)
admin.site.register(Documentos)
class PacAdmin(admin.ModelAdmin):
	list_display = ['numero', 'descripcion', 'caracter']
admin.site.register(Pac, PacAdmin)
class ResultadoAdmin(admin.ModelAdmin):
	"""docstring for ResultadoAdmin"""
	list_display = ['id', 'circuito']
	
admin.site.register(Resultado, ResultadoAdmin)
class CircuitoAdmin(admin.ModelAdmin):
	list_display = ['id', 'descripcion', 'procesos']
	formfield_overrides = {
    models.ManyToManyField: {'widget': CheckboxSelectMultiple},
	}

admin.site.register(Circuito, CircuitoAdmin)
class IndicadorAdmin(admin.ModelAdmin):
    list_display = ['descripcion', 'factor']
admin.site.register(Indicador, IndicadorAdmin)
class VariableAdmin(admin.ModelAdmin):
    list_display = ['descripcion', 'indicador', 'id']
admin.site.register(Variable, VariableAdmin)