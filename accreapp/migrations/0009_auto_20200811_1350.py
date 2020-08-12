# Generated by Django 2.2.14 on 2020-08-11 05:50

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import taggit.managers


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('accreapp', '0008_auto_20200810_1631'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='category',
            options={'verbose_name': 'Tag', 'verbose_name_plural': 'Tags'},
        ),
        migrations.AlterModelOptions(
            name='file',
            options={'verbose_name': 'File', 'verbose_name_plural': 'Files'},
        ),
        migrations.AlterModelOptions(
            name='taggedfile',
            options={'verbose_name': 'Tagged File', 'verbose_name_plural': 'Tagged Files'},
        ),
        migrations.AlterField(
            model_name='file',
            name='order',
            field=models.IntegerField(default=1, verbose_name='Order'),
        ),
        migrations.AlterField(
            model_name='file',
            name='tags',
            field=taggit.managers.TaggableManager(blank=True, help_text='A comma-separated list of tags.', through='taggit.TaggedItem', to='taggit.Tag', verbose_name='Tags'),
        ),
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('office', models.CharField(default='', max_length=50, verbose_name='Office')),
                ('department', models.CharField(default='', max_length=50, verbose_name='Department')),
                ('designation', models.CharField(max_length=50, verbose_name='Designation')),
                ('birth_date', models.DateField(verbose_name='Birth Date')),
                ('address', models.CharField(blank=True, max_length=50, verbose_name='Residence Address')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='User')),
            ],
            options={
                'verbose_name': 'Profile',
                'verbose_name_plural': 'Profiles',
            },
        ),
    ]
