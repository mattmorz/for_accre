# Generated by Django 2.2.14 on 2020-08-26 11:03

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('accreapp', '0020_auto_20200824_1329'),
    ]

    operations = [
        migrations.AddField(
            model_name='taggedwhatever',
            name='user',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='Tagged by'),
            preserve_default=False,
        ),
    ]
