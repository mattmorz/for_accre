from django.db import models
from django.utils.translation import gettext as _
from django.contrib.auth.models import User
from django.utils.text import slugify
from django.db.models import Q
from django.urls import reverse

from mptt.models import MPTTModel, TreeForeignKey
from taggit.managers import TaggableManager
from taggit.models import TagBase, GenericTaggedItemBase,TaggedItemBase


import select2.fields
import select2.models

# Create your models here.
class Category(MPTTModel,TagBase):
  code = models.CharField(_("Code"), max_length=50, null=False, blank=False, default="")
  #alias = models.CharField(_("Alias"), max_length=50, default="")
  description = models.TextField(_("Description"), default="")
  parent = TreeForeignKey('self', on_delete=models.CASCADE, null=True, blank=True, related_name='children', db_index=True)
  slug = models.SlugField(_("Slug"), blank=True, default="")
 
  class MPTTMeta:
    order_insertion_by = ['code']

  class Meta:
        verbose_name = _("Tag")
        verbose_name_plural = _("Tags")


  def get_slug_list(self):
    try:
      ancestors = self.get_ancestors(include_self=True)
    except:
      ancestors = []
    else:
      ancestors = [ i.slug for i in ancestors]
    slugs = []
    for i in range(len(ancestors)):
      slugs.append('/'.join(ancestors[:i+1]))
    return slugs

  def __str__(self):
    return self.code+' ('+self.description[:50]+')'
    #return self.code
    
  def _get_unique_slug(self):
      slug = slugify(self.code)
      unique_slug = slug
      num = 1
      while Category.objects.filter(slug=unique_slug).exists():
          unique_slug = '{}_{}'.format(slug, num)
          num += 1
      return unique_slug

  def save(self, *args, **kwargs):
      if not self.slug:
          self.slug = self._get_unique_slug()
      super().save(*args, **kwargs)


class TaggedWhatever(GenericTaggedItemBase):
    # TaggedWhatever can also extend TaggedItemBase or a combination of
    # both TaggedItemBase and GenericTaggedItemBase. GenericTaggedItemBase
    # allows using the same tag for different kinds of objects, in this
    # example Food and Drink.
    # object = models.ForeignKey('File',verbose_name=_("File to Tag"),on_delete=models.CASCADE)
    # Here is where you provide your custom Tag class.
    tag = select2.fields.ForeignKey(
        Category,
        on_delete=models.CASCADE,
        related_name="%(app_label)s_%(class)s_items",
        ajax=True,
        search_field=lambda q: Q(code__istartswith=q)| Q(description__icontains=q),
        overlay="Choose a code...",
        js_options={
            'quiet_millis': 200,
        },
    )

    class Meta:
        verbose_name = _("Tagged File")
        verbose_name_plural = _("Tagged Files")
    
class AccreDetails(models.Model):
    level = models.CharField(_("Code"), max_length=3, null=False, blank=False, default="III")
    course = models.CharField(_("Courses"), max_length=5, null=False, blank=False, default="BSIS")
    accre_date =  models.DateField(_("Date of Accreditation"),null=True,blank=True)
    def __str__(self):  
        return str(self.course+'-'+self.level+'-'+str(self.accre_date))
    
    def __unicode__(self):
        return unicode(self.course+'-'+self.level+'-'+str(self.accre_date))
    
    class Meta:
        verbose_name = _("Accreditation Detail")
        verbose_name_plural = _("Accreditation Detail")
    

class File(models.Model):
    user = models.ForeignKey(User, verbose_name=_("Uploaded by"),on_delete=models.CASCADE)
    accre_details = models.ForeignKey(AccreDetails, verbose_name=_("Accreditation Details"),on_delete=models.CASCADE, default=1)
    file_name = models.FileField(_("Filename"))
    description =  models.TextField(_("Description"), max_length=10000, null=True, blank=True)
    order =  models.IntegerField(_("Order"),default=1)
    date_created = models.DateField(_("Date Created"),null=True,blank=True)
    extracted_text =  models.TextField(_("Extracted Texts"), max_length=10000, null=True, blank=True)
    uploaded_at = models.DateTimeField(_("Upload Date"), auto_now=False, auto_now_add=True)
    flag = models.BooleanField(default=0)
    tags = TaggableManager(through=TaggedWhatever,blank=True)
    
    class Meta:
        verbose_name = _("File")
        verbose_name_plural = _("Files")

    def __str__(self):  
        return str(self.file_name)
    
    def __unicode__(self):
        return unicode(self.file_name)
    
    def get_absolute_url(self):
        return self.file_name.url
    
    def get_tags(self):
        tags = []
        for tag in self.tags.all():
            str_tag = str(tag)
            split_tag = str_tag.split('(')    
            tags.append('<h6><span class="badge badge-success tagtag" data-toggle="modal" data-target=".remove-tag" title="Click to remove this tag" >'+split_tag[0]+'</span></h6>')
        return ' '.join(tags)
    

class Log(models.Model):
    user = models.OneToOneField(User, verbose_name=_("User"), on_delete=models.CASCADE)
    log_time = models.DateTimeField(_("Log Time"), auto_now=False, auto_now_add=False)
    activity = models.CharField(_("Activity"), max_length=250)

    class Meta:
        verbose_name = _("Log")
        verbose_name_plural = _("Logs")

    def __str__(self):
        return self.user

    def get_absolute_url(self):
        return reverse("Log_detail", kwargs={"pk": self.pk})

class Profile(models.Model):
    user = models.OneToOneField(User, verbose_name=_("User"), on_delete=models.CASCADE)
    office = models.CharField(_("Office"), max_length=50, default="")
    department = models.CharField(_("Department"), max_length=50, default="")
    designation = models.CharField(_("Designation"), max_length=50)
    birth_date = models.DateField(_("Birth Date"), auto_now=False, auto_now_add=False)
    address = models.CharField(_("Residence Address"), blank=True, max_length=50)

    class Meta:
        verbose_name = _("Profile")
        verbose_name_plural = _("Profiles")

    def __str__(self):
        return self.user.username

    def get_absolute_url(self):
        return reverse("Profile_detail", kwargs={"pk": self.pk})
        
    def display_office(self):
            return self.office
    
    def display_division(self):
            return self.division
    
    def display_designation(self):
            return self.designation

'''
class TaggedFile(TaggedItemBase):
    content_object = models.ForeignKey('File',verbose_name=_("File to Tag"),on_delete=models.CASCADE)
    tag =  models.OneToOneField('Category',verbose_name=_("Tag"),on_delete=models.CASCADE)
    class Meta:
        verbose_name = _("Tagged File")
        verbose_name_plural = _("Tagged Files")
'''