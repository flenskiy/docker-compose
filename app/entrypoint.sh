#!/bin/sh

sleep 1

python manage.py migrate
python manage.py collectstatic  --noinput
gunicorn stocks_products.wsgi --bind 0.0.0.0:8000

exec "$@"
