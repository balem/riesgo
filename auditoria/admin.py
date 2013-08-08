from auditoria.models import Circuito, HojaControl, Factor, Indicador, Proceso, Variable, Area, Circunscripcion, Resultado
from django.contrib import admin

admin.site.register(HojaControl)
admin.site.register(Circunscripcion)
admin.site.register(Area)
admin.site.register(Proceso)
admin.site.register(Factor)
class ResultadoAdmin(admin.ModelAdmin):
	"""docstring for ResultadoAdmin"""
	list_display = ['hoja', 'variable', 'valor']
admin.site.register(Resultado, ResultadoAdmin)
class CircuitoAdmin(admin.ModelAdmin):
    list_display = ['id', 'descripcion', 'procesos']
admin.site.register(Circuito, CircuitoAdmin)
class IndicadorAdmin(admin.ModelAdmin):
    list_display = ['descripcion', 'factor']
admin.site.register(Indicador, IndicadorAdmin)
class VariableAdmin(admin.ModelAdmin):
    list_display = ['descripcion', 'indicador', 'id']
admin.site.register(Variable, VariableAdmin)
#admin.site.register(Variables)