# Generated by Django 2.2.14 on 2020-08-10 06:21

from django.db import migrations
import taggit.managers


class Migration(migrations.Migration):

    dependencies = [
        ('accreapp', '0002_auto_20200810_1358'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='taggedwhatever',
            name='content_type',
        ),
        migrations.RemoveField(
            model_name='taggedwhatever',
            name='tag',
        ),
        migrations.AlterField(
            model_name='file',
            name='tags',
            field=taggit.managers.TaggableManager(help_text='A comma-separated list of tags.', through='taggit.TaggedItem', to='taggit.Tag', verbose_name='Tags'),
        ),
        migrations.DeleteModel(
            name='MyCustomTag',
        ),
        migrations.DeleteModel(
            name='TaggedWhatever',
        ),
    ]
