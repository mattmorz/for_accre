# Generated by Django 2.2.14 on 2020-08-10 07:56

from django.db import migrations, models
import django.db.models.deletion
import taggit.managers


class Migration(migrations.Migration):

    dependencies = [
        ('accreapp', '0005_auto_20200810_1546'),
    ]

    operations = [
        migrations.CreateModel(
            name='MyCustomTag',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100, unique=True, verbose_name='name')),
                ('slug', models.SlugField(max_length=100, unique=True, verbose_name='slug')),
            ],
            options={
                'verbose_name': 'Tag',
                'verbose_name_plural': 'Tags',
            },
        ),
        migrations.RemoveField(
            model_name='category',
            name='name',
        ),
        migrations.AlterField(
            model_name='file',
            name='tags',
            field=taggit.managers.TaggableManager(blank=True, help_text='A comma-separated list of tags.', through='accreapp.TaggedWhatever', to='accreapp.MyCustomTag', verbose_name='Tags'),
        ),
        migrations.AlterField(
            model_name='taggedwhatever',
            name='tag',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='accreapp_taggedwhatever_items', to='accreapp.MyCustomTag'),
        ),
        migrations.AddField(
            model_name='mycustomtag',
            name='my_tag',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='accreapp.Category', verbose_name='Tag'),
        ),
    ]