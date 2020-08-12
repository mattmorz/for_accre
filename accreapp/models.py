from django.db import models
from django.utils.translation import gettext as _
from django.contrib.auth.models import User
from django.utils.text import slugify
from django.urls import reverse

from mptt.models import MPTTModel, TreeForeignKey
from taggit.managers import TaggableManager
from taggit.models import TagBase, GenericTaggedItemBase,TaggedItemBase

# Create your models here.
class Category(MPTTModel,TagBase):
  code = models.CharField(_("Code"), max_length=50, null=False, blank=False, default="")
  #alias = models.CharField(_("Alias"), max_length=50, default="")
  description = models.CharField(_("Description"), max_length=50, default="")
  parent = TreeForeignKey('self', on_delete=models.CASCADE, null=True, blank=True, related_name='children', db_index=True)
  slug = models.SlugField(_("Slug"))
 
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
    return self.code

  def save(self, *args, **kwargs):
    self.slug = slugify(self.code)
    super(Category, self).save(*args, **kwargs)

class TaggedWhatever(GenericTaggedItemBase):
    # TaggedWhatever can also extend TaggedItemBase or a combination of
    # both TaggedItemBase and GenericTaggedItemBase. GenericTaggedItemBase
    # allows using the same tag for different kinds of objects, in this
    # example Food and Drink.
    # object = models.ForeignKey('File',verbose_name=_("File to Tag"),on_delete=models.CASCADE)
    # Here is where you provide your custom Tag class.
    tag = models.ForeignKey(
        Category,
        on_delete=models.CASCADE,
        related_name="%(app_label)s_%(class)s_items",
    )

    class Meta:
        verbose_name = _("Tagged File")
        verbose_name_plural = _("Tagged Files")
    

class File(models.Model):
    user = models.ForeignKey(User, verbose_name=_("Uploaded by"),on_delete=models.CASCADE)
    file_name = models.FileField(_("Filename"))
    description =  models.TextField(_("Description"), max_length=10000, null=True, blank=True)
    order =  models.IntegerField(_("Order"),default=1)
    date_created = models.DateField(_("Date Created"),null=True,blank=True)
    extracted_text =  models.TextField(_("Extracted Texts"), max_length=10000, null=True, blank=True)
    uploaded_at = models.DateTimeField(_("Upload Date"), auto_now=False, auto_now_add=True)
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
          tags.append(str(tag))
        return ', '.join(tags)
    

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