# Generated by Django 5.0.3 on 2024-04-17 15:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order',
            name='status',
            field=models.CharField(blank=True, choices=[('pending', 'Panding'), ('delivered', 'Delivered'), ('on the way', 'On the way'), ('confirem', 'Confirm'), ('cancelled', 'Cancelled')], max_length=10, null=True),
        ),
        migrations.AlterField(
            model_name='payment',
            name='status',
            field=models.CharField(blank=True, choices=[('confirm', 'Confirm'), ('cancelled', 'cancelled'), ('pending', 'Panding')], max_length=10),
        ),
    ]
