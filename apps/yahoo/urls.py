#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# Date: 2020/08/30
# Author: huimingz
# Contact: huimingz12@outlook.com

from django.urls import path
from . import views

urlpatterns = [
    path("", views.IndexView.as_view(), name="index"),
]
