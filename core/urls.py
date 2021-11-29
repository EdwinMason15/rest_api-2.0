from django.urls import path
from core import views
from rest_framework.urlpatterns import format_suffix_patterns
#from django.contrib.auth import views as auth_views

urlpatterns = [
    #"""path('login/', auth_views.LoginView.as_view(), name = 'login'),"""
    path('stores/', views.StoreList.as_view(), name="stores"),
    path('stored/<int:pk>/', views.StoreListDetail.as_view()),
    path('brands/', views.BrandList.as_view()),
    path('brandd/<int:pk>/', views.BrandListDetail.as_view()),
    path('deals/', views.DealsList.as_view()),
    path('dealsd/<int:pk>/', views.DealsListDetail.as_view()),

]
urlpatterns = format_suffix_patterns(urlpatterns)
