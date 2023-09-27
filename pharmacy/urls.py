"""pharmacy URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
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
from django.contrib import admin
from django.urls import path
from django.contrib import admin
from django.urls import path
from . import views
from django.conf.urls import url
from django.conf import settings
from django.conf.urls.static import static
urlpatterns = [
    path('',views.index),
    path('first',views.index),
    path('logout/',views.logout),
    path('register',views.register),
    path('viewuserdoctor',views.viewuserdoctor),
    path('viewuserconsult',views.viewuserconsult),
    path('viewdoctorproduct',views.viewdoctorproduct),
    path('login',views.login),
    path('productt',views.productt),
    path('addd',views.addd),
    path('adddoctor',views.adddoctor),
    path('viewuserproduct',views.viewuserproduct),
    path('viewdoctorreq',views.viewdoctorreq),
    path('buy/<int:id>',views.buy,name='buy'),
    path('dtt/<int:id>',views.dtt,name='dtt'),
    path('dtt/dconsult',views.dconsult,name='dconsult'),
    path('consult1/<int:id>',views.consult1,name='consult1'),
    path('consult1/addconsult',views.addconsult,name='addconsult'),
    path('buy/paid',views.paid,name='paid'),
    path('adduser',views.adduser),
    path('readmin',views.readmin),
    path('requu',views.requu),
    path('addpro/<int:id>',views.addpro,name='addpro'),
    path('addpro/finall',views.finall,name='finall'),
    path('viewuserpaid',views.viewuserpaid),
    path('viewadminpayment',views.viewadminpayment),
    path('addlogin',views.addlogin),
    path('userprescribe',views.userprescribe),
    path('adddrug',views.adddrug),
    path('drugdelete/<int:id>',views.drugdelete),
    path('drugupdt/<int:id>',views.drugupdt),
    path('drugupdt/updtdrug/<int:id>',views.updtdrug),
    path('nonmed',views.nonmed),
    path('addnonmed',views.addnonmed),

   

    path('admin/', admin.site.urls),

]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
