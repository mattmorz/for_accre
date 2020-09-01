from django.contrib import admin
from accreapp.models import File, Category,  Profile, TaggedWhatever, AccreDetails
from taggit.admin import Tag

# Register your models here.
class FileAdmin(admin.ModelAdmin):
    list_display = ('id','user', 'file_name','description','uploaded_at','accre_details','date_created')
    list_filter = ('tags','user')
    exclude = ['tags','extracted_text','order']

class CategoryAdmin(admin.ModelAdmin):
    list_display = ('code','description','parent','slug')
    list_filter = ('code','parent')
    search_fields = (
        'code',
    )

admin.site.register(Category,CategoryAdmin)
admin.site.register(TaggedWhatever)
admin.site.register(File,FileAdmin)
admin.site.register(Profile)
admin.site.register(AccreDetails)

admin.site.unregister(Tag)
