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
from django.conf import settings
from django.contrib.auth import get_user_model
User = get_user_model()
from django.contrib.contenttypes.models import ContentType
from django.db.models import Count
from django.utils.crypto import get_random_string

from accreapp.models import TaggedWhatever, Profile, File, Category
from taggit.models import Tag
from actstream import action

import os, json
from model_utils import Choices
import fitz

@login_required
def home(request):
    current_user = request.user
    user_instance = User.objects.get(id=current_user.id)
    nodes = Category.objects.all().annotate(count=Count('children')).order_by('tree_id')
    isAllowed = current_user.is_superuser | current_user.is_staff
    return render(request, 'accreapp/home.html', {'nodes': nodes, 'isAllowed':isAllowed})

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
    if request.user.is_authenticated and request.method == 'POST':
        blob = request.FILES.get('image')
        fileN = request.POST.get('fname')
        orderN = request.POST.get('order')
        current_user = request.user
        content_type = ContentType.objects.get(id=9)
        user_instance = User.objects.get(id=current_user.id)
        if not os.path.exists(default_storage.path(fileN)):
            b = File(user=user_instance,file_name=fileN,description='To be updated...',extracted_text='To be updated...' )
            action.send(user_instance, verb='Added',action_object=b,description='Added File  '+fileN, target=content_type)
            default_storage.save(fileN, blob)
            b.save()
            return JsonResponse({'is_uploaded':1,'filename': fileN, 'order':int(orderN) })
        else:
            #print 'Already saved on the server -->'+fileN
            #return JsonResponse({'is_uploaded':0})
            return HttpResponse(status=500)
    else:
        return HttpResponse(status=500)

ORDER_COLUMN_CHOICES =Choices(
    ('1', 'file_name'),
    ('2', 'date_created'),
    ('3', 'description'),
    ('4', 'tagged_items__tag__code'),
    ('5', 'uploaded_at'),
    ('6', 'id'),
    ('7', 'uploaded_by')
)

def mainTableData(request):
    if request.user.is_authenticated:         
        draw = int(request.GET.get('draw', None))
        length = int(request.GET.get('length', None))
        start = int(request.GET.get('start', None))
        search_value = request.GET.get('search[value]',None)

        #if not (request.user.is_superuser or request.user.is_staff):
        #    search_value = request.user.username
        order_column = request.GET.get('order[0][column]', None)
        order =  request.GET.get('order[0][dir]', None)
        order_column = ORDER_COLUMN_CHOICES[order_column]
        if order == 'desc':
            order_column = '-' + order_column

        user = request.user
        prof = Profile.objects.get(pk= user.id)
        prof_department =  prof.department

        allfiles = File.objects.all().exclude(flag=1).distinct()
        #if request.user.is_staff and not request.user.is_superuser:
        #    allfiles = File.objects.filter(user__profile__department = prof_department).all().distinct()
        total = allfiles.count()
        
        if search_value:
            allfiles = allfiles.filter(Q(file_name__icontains=search_value) |
                                    Q(tags__code__istartswith=search_value) |
                                    Q(user__username__icontains=search_value) |
                                    Q(description__icontains=search_value)).all().exclude(flag=1).distinct()
        count = allfiles.count()
        if length != -1:
            allfiles = allfiles.order_by(order_column)[start:start + length]
        else:
            allfiles = allfiles.order_by(order_column)
        
        lst = []
        for i in allfiles:
            dd = i.date_created
            if i.date_created is not None:
                dd = i.date_created.strftime("%B %d, %Y")
            lst.append({
                'id':i.id,
                'file_name': str(i.file_name),
                'tagged_items__tag__code': i.get_tags(),
                'date_created': dd,
                'description': i.description,
                'uploaded_by': i.user.username,
                'uploaded_at': i.uploaded_at
            })

        result = dict()
        result['data'] = lst
        result['draw'] = draw
        result['recordsTotal'] =total
        result['recordsFiltered'] = count

        return JsonResponse(result, safe=False)
    else:
        return HttpResponse(status=500)

def bulkUpdate(request):
    if request.user.is_authenticated and request.method == 'POST':
        current_user = request.user
        user_instance = User.objects.get(id=current_user.id)
        controlNums = json.loads(request.POST['controlNums'])
        description = request.POST.get('description')
        date_created = request.POST.get('date_created')
        tags =  request.POST.getlist('tags')
        #print (tags)

        d = {}
        content_type = ContentType.objects.get(id=9)
        your_ids = []

        if len(controlNums) > 0 :
            if len(tags) == 0 and description == '' and date_created == '':
                return JsonResponse({'is_updated': 2})

            if not description == '':
                d['description'] = description
            if not date_created == '':
                d['date_created'] = date_created
            
            bulk_taggedFile = []
            for i in controlNums:
                b = File.objects.get(id=i)
                if b.user.id == current_user.id:
                    your_ids.append(i)
                codes = []
               
                print ('tags',tags)
                for j in tags:
                    if len(tags) > 0 and tags[0] != '':
                        tagss =  Category.objects.get(id = j)
                        '''
                        if Category.objects.filter(id=j).exists() and b.user.id == current_user.id:
                            #TaggedWhatever.objects.filter(object_id=i).delete()
                            bulk_taggedFile.append(TaggedWhatever(object_id = i,content_type = content_type,tag = tagss, user = user_instance))
                            TaggedWhatever.objects.bulk_create(bulk_taggedFile)
                            codes.append(tagss.code)      
                        '''
                        if Category.objects.filter(id=j).exists() and not TaggedWhatever.objects.filter(object_id=i,tag = tagss).exists():
                            bulk_taggedFile.append(TaggedWhatever(object_id = i,content_type = content_type,tag = tagss, user = user_instance))
                            #print (bulk_taggedFile)
                            codes.append(tagss.code) 
                        else:
                            print ('duplicated/invalid tag')

                if len(tags) > 0 and tags[0] != '':
                    action.send(user_instance, verb='Tagged',action_object=b,description='Tagged File  '+str(b.file_name)+' on '+','.join(codes) , target=content_type)
                if not description == '' and not date_created == '' and len(your_ids) > 0:    
                    action.send(user_instance, verb='Updated',action_object=b,description='Updated File  '+str(b.file_name)+'\'s description and date.' , target=content_type)
                elif not description == '' and len(your_ids) > 0:     
                    #print('i am here')    
                    action.send(user_instance, verb='Updated',action_object=b,description='Updated File  '+str(b.file_name)+'\'s description.' , target=content_type)
                elif not date_created == '' and len(your_ids) > 0:      
                    action.send(user_instance, verb='Updated',action_object=b,description='Updated File  '+str(b.file_name)+'\'s date.' , target=content_type)

            TaggedWhatever.objects.bulk_create(bulk_taggedFile)

            print ('file id',your_ids)

            if len(your_ids) == 0 and len(tags) == 0:
                return JsonResponse({'is_updated': 0})
            if current_user.is_superuser or current_user.is_staff:
                File.objects.filter(id__in=your_ids).update(**d)
                return JsonResponse({'is_updated': 1})

    else:
        return HttpResponse(status=500)

def bulkDelete(request):
    current_user = request.user
    user_instance = User.objects.get(id=current_user.id)
    content_type = ContentType.objects.get(id=9)

    if request.user.is_authenticated and user_instance.has_perm('accreapp.delete_file'):
        controlNums = json.loads(request.POST['controlNums'])
        counter = 0
        if len(controlNums) > 0 :
            for i in controlNums:
                counter+=1
                b = File.objects.get(id=i)
                print (b)
                print (str(counter))
                action.send(user_instance, verb='Deleted',action_object=b,description='Deleted File  '+str(b.file_name) , target=content_type)
            if counter == len(controlNums):
                #print ('wwwww')
                File.objects.filter(id__in=controlNums).update(flag=1)
            return JsonResponse({'is_deleted_items': 1})
        else:
            return JsonResponse({'is_deleted_items': 0})
    else:
        return HttpResponse(status=500)

def removeTag(request):
    current_user = request.user
    user_instance = User.objects.get(id=current_user.id)
    content_type = ContentType.objects.get(id=13)

    if request.user.is_authenticated:
        tag = request.POST.get('tag')
        file = request.POST.get('file_name')
        b = File.objects.get(file_name=file)
        if TaggedWhatever.objects.filter(tag__code=tag,object_id=b.id,user=current_user.id) or current_user.is_superuser:
            TaggedWhatever.objects.filter(tag__code=tag,object_id=b.id).delete()
            action.send(user_instance, verb='Removed tag',action_object=b,description='Removed tag  '+tag+' on '+str(b.file_name) , target=content_type)
            return JsonResponse({'is_tag_removed': 1})
        else:
            return JsonResponse({'is_tag_removed': 0})
    else:
        return HttpResponse(status=500)

def mergePDFs(request):
    if request.user.is_authenticated:
        #pdf_files = request.GET.getlist('file_names[]')
        tag = request.GET.get('tag')
        
        try: 
            get_tag = Category.objects.get(code = tag)
            child_tags = get_tag.get_descendants(include_self=True)
            list_child_tags = list(child_tags.values_list('id', flat=True))
            #print (list_child_tags)
            unique_id = get_random_string(length=8).upper()
            pdfFileName = str(get_tag.code)+'_'+unique_id+'.pdf'

            #print ('tag',tag)
            list_files = list(TaggedWhatever.objects.filter(tag_id__in=list_child_tags).values_list('object_id',flat=True).distinct())
            #print ('files',list_files)
            #print (pdfFileName)

            file_json = []
            #doc_pdf = fitz.open()
            if not get_tag:
                return JsonResponse({'is_generated': 0})
            if get_tag and len(list_files) > 0:
                for i in list_files:
                    if File.objects.filter(Q(id=i),Q(flag=0)).exists():
                        f = File.objects.get(id=i)
                        f_file_name =  str(f.file_name)
                        #infile = fitz.open(default_storage.path(f_file_name))
                        f_tags = f.tags.all()
                        list_f_tags = f.tags.all()
                        f_ttags = []
                        for t in list_f_tags:
                            f_ttags.append('Area '+t.code+'('+t.description+')')
                        #print (f_ttags)
                        file_json.append({
                            'file_name':f_file_name,
                            'tags': list(f_ttags)
                            }
                        )
                    else:
                        print ('deleted',i)
                    #doc_pdf.insertPDF(infile)
                    #infile.close()
                #doc_pdf.save(settings.MEDIA_ROOT+'/'+pdfFileName, deflate=True, garbage=3)
                return JsonResponse({'is_generated': 1,'generated_pdf':pdfFileName, 'files':file_json,'tag': 'Area '+get_tag.code+': '+get_tag.description})
            else:
                return JsonResponse({'is_generated': 0})
        except Category.DoesNotExist:
            return JsonResponse({'is_generated': 0})
    else:
        return HttpResponse(status=500)