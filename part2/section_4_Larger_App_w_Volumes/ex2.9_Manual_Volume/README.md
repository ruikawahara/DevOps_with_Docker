# 4. Larger Application with Volumes

## Exercise 2.9 - Manual Volume

We will continue from [ex 2.6](../ex2.6_database).


Images like [Postgres](https://hub.docker.com/_/postgres/) uses volume by default. Manually define volumes for database in convenient location. Do the same thing for [redis](https://hub.docker.com/_/redis/) as well.

---

## Solution

### **WARNING - Windows bind are known to cause issue creating volumes locally with Postgres. if you are using WSL2, you will need to create `database` directory on Linux side (e.g. `~/database`).**

<br>

**TL;DR - Make sure your save location doesn't have `/mnt/...` upon using `pwd` if you're using WSL2.**

<br>

First, start up your `docker-compose` with following command:

```docker
# start
docker-compose up
```

Once you are in [http://localhost:5000/](http://localhost:5000/), Use section for ex2.6 to send few message. This will store your message in your database container. At the same time, `database` directory will be created in your home directory (`~/` for WSL2) upon saving your message.

<br>

### **Note: if you want to access to your `~/database`, make sure to change permission setting (e.g. `chmod -R 777 ~/database`) first as permission is set to the ones in container. You will need an admin access on your computer to do this.**

<br>

Once you're done, run the following command:

```docker
# Clean up
docker-compose down
```

You'll notice that the contents of `~/database` directory persists. Run `docker-compose up` again press "GET ALL MESSAGES!" to verify that contents of your database were backed up. 

If you delete your `~database` directory and run up the `docker-compose` again, you'll notice that none of your sent message is preserved, thus completing this exercise.

Above techniques also works for `redis` as well.

For specific implementation, please refer to `docker-compose.yml` located in this directory.

---

## Output

Refer to `database` (db) and `cache` (redis) directory in this repo. Note that this is a copy of the output made in Linux side of WSL2 so this will not affect this project.