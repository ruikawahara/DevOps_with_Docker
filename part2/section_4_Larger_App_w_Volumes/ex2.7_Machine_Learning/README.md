# 4. Larger Application with Volumes

## Exercise 2.7 - Machine Learning 

Configure machine learning project using [frontend](https://github.com/docker-hy/ml-kurkkumopo-frontend), [backend](https://github.com/docker-hy/ml-kurkkumopo-backend), and [training](https://github.com/docker-hy/ml-kurkkumopo-training).

You should see your result in [http://localhost:3000](http://localhost:3000).

*Note: `training` requires 2 volumes and `backend` should share volume `/src/model` with `training`.*

---

## Solution

Before you begin, make sure clone [ml-kurkkumopo-frontend](https://github.com/docker-hy/ml-kurkkumopo-frontend), [ml-kurkkumopo-backend](https://github.com/docker-hy/ml-kurkkumopo-backend), and [ml-kurkkumopo-training](https://github.com/docker-hy/ml-kurkkumopo-training) into this directory.

For specific implementation, refer to `docker-compose.yml`

---

## Output