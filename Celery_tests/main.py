from celery import Celery, current_task
from redis import StrictRedis
from time import sleep
from lo import bitch
app = Celery('myapp')
app.config_from_object('celeryconfig')

# Connect to Redis
redis_client = StrictRedis(host='localhost', port=6379, db=0)

@app.task
def add_item_to_redis(item):
    # Add the item to Redis
    print("after sleep()")
    redis_client.rpush('mylist', item)
    return f"Added item '{item}' to Redis."
