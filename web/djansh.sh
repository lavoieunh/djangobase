django-admin startproject demosite

echo Starting Gnuicorn
exec gnuicorn demosite.wsgi:application \
    --name django \
    --bind 0.0.0.0:8000 \
    --workers 3 \
    --log-level=info \
    --log-file=/srv/logs/gnuicorn.log \
    "$@"
