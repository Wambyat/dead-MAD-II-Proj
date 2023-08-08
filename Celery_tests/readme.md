redis-server
celery -A main worker --loglevel=info --logfile=celery.log
redis-cli
run app.py