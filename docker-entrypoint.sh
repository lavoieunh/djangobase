#!/bin/ash

pip install -U pip \
&& pip install psycopg2 \
&& pip install -r requirements.txt \ 
&& pip install --upgrade wheel \
&& pip install --upgrade setuptools 
