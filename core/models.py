from django.db import models
from django.contrib.auth.models import AbstractBaseUser
from django.contrib.auth.models import PermissionsMixin
from django.contrib.auth.models import BaseUserManager
from datetime import datetime

class UserProfileManager(BaseUserManager):
    """Manager para Perfiles de usuario"""
    def create_user(self, email, name, password= None):
        """Crear nuevo UserProfile"""
        if not email:
            raise ValueError('Usuario debe tener un Email')
        email= self.normalize_email(email)
        user = self.model(email=email, name=name)

        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self,email,name,password):
        user = self.create_user(email,name,password)

        user.is_superuser = True
        user.is_staff = True
        user.save(using=self._db)

        return user

"""Modelo base de datos para Usuarios del sistema"""
class UserProfile(AbstractBaseUser,PermissionsMixin):
    email = models.EmailField(max_length=255, unique=True)
    name = models.CharField(max_length=255)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)

    objects = UserProfileManager()

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['name']

    def get_full_name(self):
        """Obtener nombre largo del usuario"""
        return self.name

    def get_short_name(self):
        """Obtener nombre corto del usuario"""
        return self.name

    def __str__(self):
        """Retornar cadena representando a nuestro usuario"""
        return self.email

"""Modelo Base de datos para Marcas en el sistema"""
class Brands(models.Model):
    name = models.CharField(max_length=150, verbose_name='Nombre', unique=True)
    image = models.ImageField(upload_to='brand/%Y/%m/%d', null=True, blank=True)
    description = models.CharField(max_length=150, verbose_name='description')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Brand'
        verbose_name_plural = 'Brands'
        ordering = ['id']

"""Modelo base de datos para Tiendas en el sistema"""
class Stores(models.Model):
    name = models.CharField(max_length=150, verbose_name='Nombre', unique=True)
    brand = models.ForeignKey(Brands, on_delete=models.CASCADE)
    identifier = models.CharField(max_length=200, verbose_name='identifier')
    address = models.CharField(max_length=200, verbose_name='adrress')

    def __str__(self):
        return 'Nombre: {}'.format(self.name)

    class Meta:
        verbose_name = 'Store'
        verbose_name_plural = 'Stores'
        ordering = ['id']

"""Modelo base de datos para Ofertas en el sistema"""
class Deals(models.Model):
    name = models.CharField(max_length=150, verbose_name='Nombre', unique=True)
    store = models.ForeignKey(Stores, on_delete=models.CASCADE)
    image = models.ImageField(upload_to='deal/%Y/%m/%d', null=True, blank=True)
    price = models.DecimalField(default=0.00, max_digits=9, decimal_places=2)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Deal'
        verbose_name_plural = 'Deals'
        ordering = ['id']

class Favorita(models.Model):
    usuario = models.ForeignKey(UserProfile, on_delete=models.CASCADE)
    tiendafavorita = models.ForeignKey(Stores, on_delete=models.CASCADE)
    date_created = models.DateField(default=datetime.now, verbose_name='Fecha de registro')

    def __str__(self):
        return self.usuario

    class Meta:
        verbose_name = 'favorita'
        verbose_name_plural = 'tfavorita'
        ordering = ['id']


