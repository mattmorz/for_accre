
import os
from django.shortcuts import render
from django.contrib.auth import authenticate, login
from pprint import pprint
from django.contrib.auth.decorators import login_required
from django.urls import reverse
from django.shortcuts import redirect
from django.contrib.auth import logout
from django.views.decorators.cache import cache_control


@cache_control(no_cache=True, must_revalidate=True, no_store=True)
@login_required
def home(request):
    return redirect(reverse('app'))

def signin(request):
    if request.user.is_authenticated:
        return redirect(reverse('home'))
    return render(request, 'registration/login.html')

def signout(request):
    logout(request)
    return render(request, 'registration/login.html')