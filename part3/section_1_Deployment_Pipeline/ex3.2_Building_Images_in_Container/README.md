# 1. Deployment Pipeline

## Exercise 3.2 - Building images inside of a container

Build your own build service, just like [Watchtower](https://containrrr.dev/watchtower/). Your service should:

1. Downloads repo from GitHub
1. Builds `Dockerfile` from root
1. Publishes it into Docker Hub 

Write a small script for this and also make a `Dockerfile` to run inside container.

---

## Solution

For the specific implementation, please refer to `build_service.py` and `Dockerfile` located in this directory.