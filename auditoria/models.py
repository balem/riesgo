# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#     * Rearrange models' order
#     * Make sure each model has one field with primary_key=True
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [appname]'
# into your database.
from __future__ import unicode_literals
from django.contrib.auth.models import User
from django.db import models

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


class Identificador(models.Model):
    """Esta entidad permitira asociar varias hojas de control"""
    descripcion = models.CharField(max_length=255L, unique=True)
    def __unicode__(self):
        return self.descripcion

class Variable(models.Model):
    descripcion = models.CharField(max_length=255L)
    valor = models.FloatField()
    indicador = models.ForeignKey(Indicador, db_column='indicador')
    def __unicode__(self):
        return self.descripcion

class Circuito(models.Model):
    descripcion = models.CharField(max_length=255L)
    valor = models.FloatField()
    procesos = models.ForeignKey('Proceso', db_column='proceso')
    variables = models.ManyToManyField(Variable, verbose_name='Variables', related_name='circuito_variable')
    def __unicode__(self):
        return self.descripcion

ACCION_CHOICES=(
    ('Creacion', 'Creacion'),
    ('Modificacion', 'Modificacion'),
)

import datetime
YEAR_CHOICES = []
for r in range(1980, (datetime.datetime.now().year+1)):
        YEAR_CHOICES.append((r,r))

class Resolucion(models.Model):
    """docstring for Resolucion"""
    nro = models.IntegerField()
    descripcion = models.TextField()
    accion = models.CharField(max_length=15, choices= ACCION_CHOICES)
    fecha = models.DateField()
    ejercicio = models.IntegerField(max_length=4, choices=YEAR_CHOICES)
    def __unicode__(self):
        return self.descripcion

class Caracter(models.Model):
    """docstring for Caracter"""
    descripcion = models.CharField(max_length=255L)
    def __unicode__(self):
        return self.descripcion

class Modlidad(models.Model):
    """docstring for Modlidad"""
    descripcion = models.CharField(max_length=255L)
    def __unicode__(self):
        return self.descripcion

class Pac(models.Model):
    """docstring for Pac"""
    numero = models.IntegerField()
    descripcion = models.CharField(max_length=255L)
    caracter = models.ForeignKey(Caracter)
    Modlidad = models.ForeignKey(Modlidad)
    resolucion = models.ForeignKey(Resolucion)
    def __unicode__(self):
        return self.descripcion

ACTIVOS_CHOICES=(
    ('activo', 'Activo'),
    ('inactivo', 'Inactivo'),
)

class HojaControl(models.Model):
    """Hoja de control"""
    identificador = models.ForeignKey(Identificador, db_column='identificador')
    descripcion = models.CharField(max_length=255L)
    fecha_public = models.DateField()
    activa = models.CharField(max_length=10, choices=ACTIVOS_CHOICES)
    circuito = models.ForeignKey(Circuito, db_column='circuito')
    circunscripcion = models.ForeignKey(Circunscripcion, db_column='circunscripcion')
    area = models.ForeignKey(Area, db_column='area')
    pac = models.ForeignKey(Pac, db_column='pac')
    usuario = models.ForeignKey(User, db_column='usuario')
    #variables = models.ManyToManyField(Variables, through='EncuestasVariables')
    def __unicode__(self):
        return self.descripcion

class Resultado(models.Model):
    """docstring for Resultados"""
    circuito = models.ForeignKey(Circuito)
    variable = models.ForeignKey(Variable)
    hoja = models.ForeignKey(HojaControl)
    valor = models.FloatField()
    observacion = models.TextField()

class Documentos(models.Model):
    """docstring for Documentos"""
    titulo = models.CharField(max_length=255L)
    descripcion = models.TextField()
    fecha_registro = models.DateTimeField(auto_now=True)
    docu_path = models.FileField(upload_to='archivos', verbose_name='Documentos')
    def __unicode__(self):
        return self.titulo