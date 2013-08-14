from django.conf.urls import patterns, include, url

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
    url(r'^hoja/$','auditoria.views.mostrar_encuestas'),
    url(r'^informes/$','auditoria.views.mostrar_informes'),
    url(r'^informes/(?P<encuesta_id>.*)/$','auditoria.views.ver_hoja'),
    url(r'^imprimir/informe/(?P<id>.*)$','auditoria.views.ver_hoja_pdf'),
    url(r'^$','auditoria.views.base'),
    url(r'^hoja/(?P<encuesta_id>.*)/$','auditoria.views.add_hoja'),
    url(r'^login/$','auditoria.views.ingresar', name='vista_login'),
    url(r'^logout/$','auditoria.views.salir', name='vista_logout'),
    url(r'^pdf_generate/(?P<id>.*)$','auditoria.views.hoja_pdf'),
    #url(r'^encuesta/add/$','auditoria.views.add_encuesta'),
)
