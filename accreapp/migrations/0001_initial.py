# Generated by Django 2.2.14 on 2020-08-10 05:28

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import mptt.fields
import taggit.managers


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('taggit', '0003_taggeditem_add_unique_index'),
    ]

    operations = [
        migrations.CreateModel(
            name='File',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('file_name', models.FileField(upload_to='', verbose_name='Filename')),
                ('description', models.TextField(blank=True, max_length=10000, null=True, verbose_name='Description')),
                ('order', models.IntegerField(verbose_name='Order')),
                ('extracted_text', models.TextField(blank=True, max_length=10000, null=True, verbose_name='Extracted Texts')),
                ('uploaded_at', models.DateTimeField(auto_now_add=True, verbose_name='Upload Time')),
                ('tags', taggit.managers.TaggableManager(help_text='A comma-separated list of tags.', through='taggit.TaggedItem', to='taggit.Tag', verbose_name='Tags')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='Uploaded by')),
            ],
            options={
                'verbose_name': 'Media File (Scanned/Uploaded)',
                'verbose_name_plural': 'Media Files (Scanned/Uploaded)',
            },
        ),
        migrations.CreateModel(
            name='TaggedFile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('content_object', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='accreapp.File')),
                ('tag', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='accreapp_taggedfile_items', to='taggit.Tag')),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='Log',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('log_time', models.DateTimeField(verbose_name='Log Time')),
                ('activity', models.CharField(max_length=250, verbose_name='Activity')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='User')),
            ],
            options={
                'verbose_name': 'Log',
                'verbose_name_plural': 'Logs',
            },
        ),
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('code', models.CharField(default='', max_length=50, verbose_name='Code')),
                ('alias', models.CharField(default='', max_length=50, verbose_name='Alias')),
                ('description', models.CharField(default='', max_length=50, verbose_name='Description')),
                ('slug', models.SlugField(verbose_name='Slug')),
                ('lft', models.PositiveIntegerField(editable=False)),
                ('rght', models.PositiveIntegerField(editable=False)),
                ('tree_id', models.PositiveIntegerField(db_index=True, editable=False)),
                ('level', models.PositiveIntegerField(editable=False)),
                ('parent', mptt.fields.TreeForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='children', to='accreapp.Category')),
            ],
            options={
                'verbose_name_plural': 'Categories',
            },
        ),
    ]
