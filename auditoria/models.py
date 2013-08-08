# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#     * Rearrange models' order
#     * Make sure each model has one field with primary_key=True
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [appname]'
# into your database.
from __future__ import unicode_literals

from django.db import models

class Circuito(models.Model):
    descripcion = models.CharField(max_length=255L)
    valor = models.FloatField()
    procesos = models.ForeignKey('Proceso', db_column='proceso')
    def __unicode__(self):
        return self.descripcion

class Area(models.Model):
    """docstring for Areas"""
    descripcion = models.CharField(max_length=255L)
    def __unicode__(self):
        return self.descripcion

class Circunscripcion(models.Model):
    """docstring for Circunscripciones"""
    descripcion = models.CharField(max_length=255L)
    def __unicode__(self):
        return self.descripcion

class Factor(models.Model):
    descripcion = models.CharField(max_length=255L)
    def __unicode__(self):
        return self.descripcion

class Indicador(models.Model):
    descripcion = models.CharField(max_length=255L)
    factor = models.ForeignKey(Factor, db_column='factor')
    def __unicode__(self):
        return self.descripcion

class Proceso(models.Model):
    descripcion = models.CharField(max_length=255L)
    def __unicode__(self):
        return self.descripcion

class Variable(models.Model):
    descripcion = models.CharField(max_length=255L)
    valor = models.FloatField()
    indicador = models.ForeignKey(Indicador, db_column='indicador')
    def __unicode__(self):
        return self.descripcion
        
ACTIVOS_CHOICES=(
    ('activo', 'Activo'),
    ('inactivo', 'Inactivo'),
)

class HojaControl(models.Model):
    """Hoja de control"""
    descripcion = models.CharField(max_length=255L)
    fecha_public = models.DateField()
    activa = models.CharField(max_length=10, choices=ACTIVOS_CHOICES)
    circuito = models.ForeignKey(Circuito, db_column='circuito')
    circunscripcion = models.ForeignKey(Circunscripcion, db_column='circunscripcion')
    area = models.ForeignKey(Area, db_column='area')
    #variables = models.ManyToManyField(Variables, through='EncuestasVariables')
    variables = models.ManyToManyField(Variable, verbose_name='Variables', related_name='hoja_variable')
    def __unicode__(self):
        return self.descripcion

class Resultado(models.Model):
    """docstring for Resultados"""
    hoja = models.ForeignKey(HojaControl)
    variable = models.ForeignKey(Variable)
    valor = models.FloatField()
    #def __unicode__(self):
    #    return self.hoja
            
#                  
#class EncuestasVariables(models.Model):
#    encuestas_id = models.ForeignKey(Encuestas, db_column='encuestas_id')
#    variables_id = models.ForeignKey(Variables, db_column='variables_id')
#    valor = models.FloatField()