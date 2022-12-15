# Generated by Django 4.1.3 on 2022-11-28 12:09

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Categorie',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
            ],
            options={
                'verbose_name': 'Categorie',
                'verbose_name_plural': 'Categorie',
            },
        ),
        migrations.CreateModel(
            name='Gif',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
                ('URL', models.URLField()),
                ('uploader_name', models.CharField(max_length=100)),
                ('created_at', models.DateTimeField(default=datetime.datetime(2022, 11, 28, 12, 9, 30, 196404))),
                ('categorie', models.ManyToManyField(blank=True, related_name='categories', to='gifs.categorie')),
            ],
        ),
    ]