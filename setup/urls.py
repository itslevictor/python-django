from django.contrib import admin
from django.urls import path
from core.views import lista_produtos # Importe sua view

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', lista_produtos), # Isso faz a página inicial mostrar os produtos
]