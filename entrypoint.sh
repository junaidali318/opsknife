#!/bin/bash

python manage.py migrate --no-input
python manage.py collectstatic --no-input
python manage.py makemigrations

cd /app && gunicorn wsgi:application --bind 0.0.0.0:8000