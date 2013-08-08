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
    url(r'^hoja/(?P<encuesta_id>.*)/$','auditoria.views.add_hoja'),
    url(r'^login/$','auditoria.views.login', name='vista_login'),
    url(r'^logout/$','auditoria.views.logout', name='vista_logout'),
    #url(r'^encuesta/add/$','auditoria.views.add_encuesta'),
)
