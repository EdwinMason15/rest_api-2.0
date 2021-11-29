from rest_framework import serializers
from core.models import Stores
from core.models import Brands
from core.models import Deals

class TiendaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Stores
        fields = '__all__'

class BrandSerializer(serializers.ModelSerializer):
    class Meta:
        model = Brands
        fields = '__all__'

class DealsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Deals
        fields = '__all__'
