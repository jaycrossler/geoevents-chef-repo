#!/usr/bin/env bash

sudo service nginx restart
sudo /var/lib/geoevents/bin/uwsgi --ini /var/lib/geoevents/geoevents.ini &
echo "Nginx and uWSGI should have restarted"