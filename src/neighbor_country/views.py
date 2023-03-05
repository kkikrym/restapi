from django.shortcuts import render
import django_filters
from rest_framework import viewsets, filters

from .models import Country
from .serializer import CountrySerializer

class CountryViewSet(viewsets.ModelViewSet):
  queryset = Country.objects.all()
  serializer_class = CountrySerializer
