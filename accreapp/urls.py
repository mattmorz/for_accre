from django.conf.urls import url
from django.urls import path,include
from . import views

urlpatterns = [
    path('', views.index, name='landing'),
    path('home', views.home, name='home'),
    path('signout', views.logout_view, name='signout'),
    path('upload', views.callUpload, name='upload'),
    path('getFiles', views.mainTableData, name='getFiles'),
    path('bulk_update', views.bulkUpdate, name='bulk_update'),
    path('bulk_delete', views.bulkDelete, name='bulk_delete'),
    path('remove_tag', views.removeTag, name='remove_tag'),
]
