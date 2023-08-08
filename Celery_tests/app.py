
from main import add_item_to_redis
from time import sleep

result = add_item_to_redis.delay('example_item3')
print(result.get())
print("after get()")