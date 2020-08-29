from django.http import HttpRequest, HttpResponse, JsonResponse
from django.shortcuts import render

# Create your views here.
from django.views import View


class IndexView(View):

    def get(self, request: HttpRequest) -> JsonResponse:
        return JsonResponse(dict(request.headers))
