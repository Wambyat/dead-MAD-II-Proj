from celery import Celery

#import time.sleep
from time import sleep

celery = Celery('tasks', broker='redis://localhost:6379/0', backend='redis://localhost:6379/0')

@celery.task()
def reverse(text):
    # n = 4
    # print(f'Sleeping for {n} seconds')
    # sleep(n)
    return text[::-1]

print('calling something now')
thingy = reverse.delay('hello world')
print('called something now')
print("wow something else goes here")
#status of thingy
print(thingy.status)
while (thingy.status != 'SUCCESS'):
    print(thingy.status)
    sleep(1)

print(thingy.status)
print(thingy.get())
print('done')