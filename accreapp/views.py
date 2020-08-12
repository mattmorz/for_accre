from django.shortcuts import render
from django.contrib.auth import authenticate, login, logout
from django.conf import settings
from django.urls import reverse
from django.shortcuts import redirect
from django.http import HttpResponse, JsonResponse,Http404
from django.contrib.auth.decorators import login_required
from django.views.decorators.cache import cache_control
from django.http import HttpResponse
from django.template import loader
from django.core.files.storage import default_storage
from django.db.models import Q
from django.contrib.auth import get_user_model
User = get_user_model()
from django.contrib.contenttypes.models import ContentType

from accreapp.models import TaggedWhatever, Profile, File, Category
from taggit.models import Tag

import os, json
from model_utils import Choices

@login_required
def home(request):
    current_user = request.user
    user_instance = User.objects.get(id=current_user.id)
    print (user_instance.get_group_permissions())
    return render(request, 'accreapp/home.html')

def index(request):
    username = request.POST.get('username',False)
    password = request.POST.get('password',False)
    user = authenticate(request, username=username, password=password)
    
    t = loader.get_template('accreapp/index.html')
    c = {'message': 'Invalid username or password.'}
    if user is not None:
        login(request, user)
        return redirect('home')
    elif username == False and password == False:
        c = {'message': ' '}
        return HttpResponse(t.render(c, request))
    else:
        return HttpResponse(t.render(c, request))

def logout_view(request):
    logout(request)
    return render(request, 'accreapp/index.html')

def callUpload(request):
    if request.user.is_authenticated and request.is_ajax() and request.method == 'POST':
        blob = request.FILES.get('image')
        fileN = request.POST.get('fname')
        orderN = request.POST.get('order')
        current_user = request.user
        user_instance = User.objects.get(id=current_user.id)
        if not os.path.exists(default_storage.path(fileN)):
            b = File(user=user_instance,file_name=fileN,description='To be updated...',extracted_text='To be updated...' )
            b.save()
            default_storage.save(fileN, blob)
            return JsonResponse({'is_uploaded':1,'filename': fileN, 'order':int(orderN) })
        else:
            #print 'Already saved on the server -->'+fileN
            return JsonResponse({'is_uploaded':0})
    else:
        raise Http404

ORDER_COLUMN_CHOICES =Choices(
    ('1', 'file_name'),
    ('2', 'date_created'),
    ('3', 'description'),
    ('4', 'tagged_items__tag__code'),
    ('5', 'uploaded_at'),
)

def mainTableData(request):
    if request.user.is_authenticated:         
        draw = int(request.GET.get('draw', None))
        length = int(request.GET.get('length', None))
        start = int(request.GET.get('start', None))
        search_value = request.GET.get('search[value]',None)

        if not (request.user.is_superuser or request.user.is_staff):
            search_value = request.user.username
        order_column = request.GET.get('order[0][column]', None)
        order =  request.GET.get('order[0][dir]', None)
        order_column = ORDER_COLUMN_CHOICES[order_column]
        if order == 'desc':
            order_column = '-' + order_column

        user = request.user
        prof = Profile.objects.get(pk= user.id)
        prof_department =  prof.department

        allfiles = File.objects.all().distinct()
        if request.user.is_staff and not request.user.is_superuser:
            allfiles = File.objects.filter(user__profile__department = prof_department).all().distinct()
        total = allfiles.count()
        
        if search_value:
            allfiles = allfiles.filter(Q(file_name__icontains=search_value) |
                                    Q(tags__code__icontains=search_value) |
                                    Q(description=search_value)).all()
        count = allfiles.count()
        if length != -1:
            allfiles = allfiles.order_by(order_column)[start:start + length]
        else:
            allfiles = allfiles.order_by(order_column)
        
        lst = []
        for i in allfiles:
            lst.append({
                'id':i.id,
                'file_name': str(i.file_name),
                'tagged_items__tag__code': i.get_tags(),
                'date_created': i.date_created,
                'description': i.description,
                'uploaded_at': i.uploaded_at
            })

        result = dict()
        result['data'] = lst
        result['draw'] = draw
        result['recordsTotal'] =total
        result['recordsFiltered'] = count

        return JsonResponse(result, safe=False)
    else:
        raise Http404


def bulkUpdate(request):
    if request.user.is_authenticated and request.method == 'POST':
        controlNums = json.loads(request.POST['controlNums'])
        description = request.POST.get('description')
        date_created = request.POST.get('date_created')
        tags =  request.POST.get('tags').split(',')
        
        is_updated = 1
        #print (tags)
        #print (len(tags))
        d = {}
        if len(controlNums) > 0 :
            if not description == '':
                d['description'] = description
            if not date_created == '':
                d['date_created'] = date_created
            if len(tags) > 0 and tags[0] != '':
                bulk_taggedFile = []
                content_type = ContentType.objects.get(id=9)
                #print (content_type)
                for i in controlNums:
                    #print ('iiiiiiii--> '+str(i))
                    for j in tags:
                        #print ('j--> '+str(j))
                        if Category.objects.filter(id=j).exists():
                            tagss =  Category.objects.get(id = j)
                            TaggedWhatever.objects.filter(object_id=i).delete()
                            bulk_taggedFile.append(TaggedWhatever(object_id = i,content_type = content_type,tag = tagss))
                        else:
                            print ('invalid tag')
                #print (bulk_taggedFile)
                TaggedWhatever.objects.bulk_create(bulk_taggedFile)
            File.objects.filter(id__in=controlNums).update(**d)
        return JsonResponse({'is_updated': is_updated})
    else:
        raise Http404

def bulkDelete(request):
    current_user = request.user
    user_instance = User.objects.get(id=current_user.id)
    print (user_instance.get_group_permissions())
    if request.user.is_authenticated and user_instance.has_perm('accreapp.delete_file'):
        controlNums = json.loads(request.POST['controlNums'])
        is_deleted = 1
        if len(controlNums) > 0 :
            File.objects.filter(id__in=controlNums).delete()
            return JsonResponse({'is_deleted_items': is_deleted})
        else:
            return JsonResponse({'is_deleted_items': 0})
    else:
        raise Http404
