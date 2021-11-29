from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from django.http import Http404

from core.serializers import TiendaSerializer
from core.serializers import BrandSerializer
from core.serializers import DealsSerializer

from core.models import Stores
from core.models import Brands
from core.models import Deals

"""Vista de Tienda"""
class StoreList(APIView):
        """Listar todas las tiendas, crear nueva tienda"""
        def get(self, request, format=None):
            stores = Stores.objects.all()
            serializer = TiendaSerializer(stores, many=True)
            return Response(serializer.data)

        def post(self, request, format=None):
            serializer = TiendaSerializer(data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data, status=status.HTTP_201_CREATED)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
class StoreListDetail(APIView):
        def get_object(self, pk):
            try:
                return Stores.objects.get(pk=pk)
            except Stores.DoesNotExist:
                raise Http404

        def get(self, request, pk, format=None):
            store = self.get_object(pk)
            serializer = TiendaSerializer(store)
            return Response(serializer.data)

        def put(self, request, pk, format=None):
            store = self.get_object(pk)
            serializer = TiendaSerializer(store, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

        def delete(self, request, pk, format=None):
            store = self.get_object(pk)
            store.delete()
            return Response(status=status.HTTP_204_NO_CONTENT)

"""Vista de Marca"""
class BrandList(APIView):
    """Listar todas las Marcas, crear nueva Marca"""
    def get(self, request, format=None):
        brands = Brands.objects.all()
        serializer = BrandSerializer(brands, many=True)
        return Response(serializer.data)

    def post(self, request, format=None):
        serializer = BrandSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
class BrandListDetail(APIView):
    def get_object(self, pk):
        try:
            return Brands.objects.get(pk=pk)
        except Brands.DoesNotExist:
            raise Http404

    def get(self, request, pk, format=None):
        brands = self.get_object(pk)
        serializer = BrandSerializer(brands)
        return Response(serializer.data)

    def put(self, request, pk, format=None):
        brands = self.get_object(pk)
        serializer = BrandSerializer(brands, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, pk, format=None):
        brands = self.get_object(pk)
        brands.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)

"""Vista de Ofertas"""
class DealsList(APIView):
    """Listar todas las Ofertas, crear nueva Oferta"""
    def get(self, request, format=None):
        deals = Deals.objects.all()
        serializer = DealsSerializer(deals, many=True)
        return Response(serializer.data)

    def post(self, request, format=None):
        serializer = DealsSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
class DealsListDetail(APIView):
    def get_object(self, pk):
        try:
            return Deals.objects.get(pk=pk)
        except Deals.DoesNotExist:
            raise Http404

    def get(self, request, pk, format=None):
        deals = self.get_object(pk)
        serializer = DealsSerializer(deals)
        return Response(serializer.data)

    def put(self, request, pk, format=None):
        deals = self.get_object(pk)
        serializer = DealsSerializer(deals, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, pk, format=None):
        deals = self.get_object(pk)
        deals.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
