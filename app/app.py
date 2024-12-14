from flask import Flask
import redis
import os

app = Flask(__name__)

## Connect to redis

cache = redis.Redis(host = os.getenv('REDIS_HOST','redis'), port = 6379)

@app.route('/')
def hello():
    count = cache.incr('visits')
    return f'Hello World! you have visited {count} times.'

if __name__ == "__main__":
    app.run(host='0.0.0.0')
    