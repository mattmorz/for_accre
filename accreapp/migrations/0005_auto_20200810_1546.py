# Generated by Django 2.2.14 on 2020-08-10 07:46

from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone
import taggit.managers


class Migration(migrations.Migration):

    dependencies = [
        ('accreapp', '0004_auto_20200810_1432'),
    ]

    operations = [
        migrations.AddField(
            model_name='category',
            name='name',
            field=models.CharField(default=django.utils.timezone.now, max_length=100, unique=True, verbose_name='name'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='file',
            name='tags',
            field=taggit.managers.TaggableManager(blank=True, help_text='A comma-separated list of tags.', through='accreapp.TaggedWhatever', to='accreapp.Category', verbose_name='Tags'),
        ),
        migrations.AlterField(
            model_name='taggedwhatever',
            name='tag',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='accreapp_taggedwhatever_items', to='accreapp.Category'),
        ),
        migrations.DeleteModel(
            name='MyCustomTag',
        ),
    ]
