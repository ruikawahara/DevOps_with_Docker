# 1. Migrating to docker-compose.yml

## Exercise 2.1 - Intro to docker-compose

Create `docker-compose.yml` file that starts `devopsdockeruh/simple-web-service` and saves the logs into local filesystem.

---

## Solution

First, prepare files you need with following commands:
```docker
# pulls docker image
docker pull devopsdockeruh/simple-web-service

# Make a file for output
touch text.log
```

Once you have everything you need, run the `docker-compose.yml` with the following command:
```docker
# run docker-compose
docker-compose up
```
For specific implementation of `docker-compose.yml`, refer to `yaml` file that is in this directory.

__Notes__: 
* Your directory should not start with a number as it can cause an issue with daemon. 
* Additionally, you may need to use `docker-compose down` to clean container in some scenario. This is typically the case if you ran `up` command before.

---

## Output

See `text.log` file located in this directory.