from django.apps import AppConfig


class AccreappConfig(AppConfig):
    name = 'accreapp'
    verbose_name = "Classification or Tagging of Files"

    def ready(self):
        from actstream import registry
        from django.contrib.auth.models import User
        from django.contrib.contenttypes.models import ContentType
        registry.register(self.get_model('File'))
        registry.register(ContentType)
        registry.register(User)