from django.conf.urls import patterns, include, url
from django.contrib.auth.forms import AdminPasswordChangeForm
from django.conf import settings

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    #url(r'^$', 'riesgo.views.home', name='home'),
    #url(r'^riesgo/', include('riesgo.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
    url(r'^hoja/(?P<pagina>.*)/$','auditoria.views.mostrar_encuestas'),
    url(r'^informes/(?P<pagina>.*)/$','auditoria.views.mostrar_informes'),
    url(r'^informe/(?P<encuesta_id>.*)/$','auditoria.views.ver_hoja'),
    url(r'^imprimir/informe/(?P<id>.*)$','auditoria.views.ver_hoja_pdf'),
    url(r'^$','auditoria.views.base'),
    url(r'^hoja_proceso/(?P<encuesta_id>.*)/$','auditoria.views.add_hoja'),
    url(r'^login/$','auditoria.views.ingresar', name='vista_login'),
    url(r'^logout/$','auditoria.views.salir', name='vista_logout'),
    url(r'^pdf_generate/(?P<id>.*)$','auditoria.views.hoja_pdf'),
    url(r'^hoja_control/add/$','auditoria.views.add_hoja_control'),
    url(r'^hoja_control/identificador/$','auditoria.views.add_identificador'),
    url(r'^caracter/$','auditoria.views.add_caracter'),
    url(r'^resolucion/$','auditoria.views.mostrar_resoluciones'),
    url(r'^resolucionpdf/$','auditoria.views.mostrar_resoluciones_pdf'),
    url(r'^resolucion/add/$','auditoria.views.add_resolucion'), 
    url(r'^resolucion/pac/add/$','auditoria.views.add_pac'),
    url(r'^resolucion/pac/(?P<resolucion_id>.*)/(?P<pagina>.*)/$','auditoria.views.mostrar_pacs'),
    url(r'^media/(?P<path>.*)$','django.views.static.serve', {'document_root':settings.MEDIA_ROOT,}),
    url(r'^documentos/$','auditoria.views.mostrar_documentos'),
    #url(r'^editar_perfil/$','auditoria.views.editar_perfil'),
    url(r'^ajax/url/$','auditoria.views.buscar'),
    url(r'^accounts/password_change/$',  # hijack password_change's url
        'django.contrib.auth.views.password_change',
        {'password_change_form': AdminPasswordChangeForm},
        name="password_change"),
    url(r'^accounts/$', include('django.contrib.auth.urls')),
    url(r'^imprimir/pdf/(?P<id>.*)$','auditoria.views.ver_hoja_pdf'),
    #url(r'^formjson/$','auditoria.views.send_pac'),
)
