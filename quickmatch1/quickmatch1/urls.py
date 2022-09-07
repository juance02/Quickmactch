"""quickmatch1 URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from re import template
from django.contrib import admin
from django.urls import path
from django.contrib.auth.views import LoginView,LogoutView
from juego.views import *
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', inicio, name='inicio'),
    #url para la vista principa 
    path ('login/', LoginView.as_view(template_name='login.html'), name='login'),
    #funcion para el login 
    path ('logout/', LogoutView.as_view(template_name='login.html'), name='logout'),
    #funcion para cerrar sesion 
    path ('register', register, name='register'),
    path ('juegos', juegos, name='juegos'),
    path ('todas_las_cartas', todas_las_cartas, name='todas_las_cartas'),
    path ('barajar/<str:clasificacion>', barajar, name='barajar'),
    
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT) 
# funcion para poder cargar imaganes en django 
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
