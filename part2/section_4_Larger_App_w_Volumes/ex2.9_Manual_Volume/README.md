# 4. Larger Application with Volumes

## Exercise 2.9 - Manual Volume

We will continue from [ex 2.6](../ex2.6_database).


Images like [Postgres](https://hub.docker.com/_/postgres/) uses volume by default. Manually define volumes for database in convenient location. Do the same thing for [redis](https://hub.docker.com/_/redis/) as well.

---

## Solution

First, start up your `docker-compose` with following command:

```docker
# start
docker-compose up
```

Once you are in [http://localhost:5000/](http://localhost:5000/), Use section for ex2.6 to send few message. This will store your message in your database container. At the same time, `database` directory will be created upon saving your message.

Once you're done, run the following command:

```docker
# Clean up
docker-compose down
```

You'll notice that contents of `database` directory persists. Run `docker-compose up` again press "GET ALL MESSAGES!" to verify that contents of your database were backed up. 

For specific implementation, please refer to `docker-compose.yml` located in this directory.

---

## Output