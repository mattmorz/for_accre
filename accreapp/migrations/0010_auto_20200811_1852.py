# Generated by Django 2.2.14 on 2020-08-11 10:52

from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone
import taggit.managers


class Migration(migrations.Migration):

    dependencies = [
        ('contenttypes', '0002_remove_content_type_name'),
        ('accreapp', '0009_auto_20200811_1350'),
    ]

    operations = [
        migrations.CreateModel(
            name='TaggedWhatever',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('object_id', models.IntegerField(db_index=True, verbose_name='object ID')),
                ('content_type', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='accreapp_taggedwhatever_tagged_items', to='contenttypes.ContentType', verbose_name='content type')),
            ],
            options={
                'abstract': False,
            },
        ),
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
        migrations.AddField(
            model_name='taggedwhatever',
            name='tag',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='accreapp_taggedwhatever_items', to='accreapp.Category'),
        ),
    ]
