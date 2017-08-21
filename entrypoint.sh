#!/bin/ash 

python3 manage.py migrate 

sleep 15 

python3 manage.py runserver 0.0.0.0:8000
