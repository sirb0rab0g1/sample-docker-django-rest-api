#!/bin/bash
python manage.py migrate
python manage.py collectstatic --no-input
python manage.py runserver 0.0.0.0:8000

# Prepare log files and start outputting logs to stdout
touch /srv/logs/gunicorn.log
touch /srv/logs/access.log