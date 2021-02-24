"""profoodreview URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
from django.conf.urls import include, url
from django.contrib import admin

urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
    url(r'^$','recom.views.home',name='home'),
    url(r'^create_acc/$','recom.views.create_acc',name='create_acc'),
    url(r'^regsuccess/$','recom.views.regsuccess',name='regsuccess'),
    url(r'^loggedin/$','recom.views.loggedin',name='loggedin'),
    url(r'^contentb/$','recom.views.contentb',name='contentb'),
    url(r'^logouti/$','recom.views.logouti',name='logouti'),
    url(r'^log_in/$','recom.views.log_in',name='log_in'),
    url(r'^error/$','recom.views.errori'),
    url(r'^review/$','recom.views.review',name='review')
]
