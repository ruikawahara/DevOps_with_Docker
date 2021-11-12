# 4. Larger Application with Volumes

## Exercise 2.5 - Database

Add [postgres database](https://hub.docker.com/_/postgres/) to `example-backend` and send message to yourself. Submit `docker-compose.yml`

---

## Solution

We will continue from 2.6, hence setup is similar.

Once everything is set up, run following command:

```docker
# start
docker-compose up

# (optional) clean
docker-compose down
```

For specific implementation, refer to `docker-compose.yml` located in this directory.

*Misc. Note* - `Dockerfile` for `redis` is not necessary. It's also necessary for ex 2.4 as well.

---

## Output