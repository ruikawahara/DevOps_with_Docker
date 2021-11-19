# DevOps with Docker Part 2

## [Container Orchestration](https://devopswithdocker.com/part2/)

### Overview

In this part, we will learn how to use docker-compose and relevant topics such as docker network.

---

### Table of Contents

1. Migrating to docker-compose (ex 2.1 ~ 2.3)
2. Docker Networking (ex 2.4)
3. Scaling (ex 2.5)
4. Larger Application with Volumes (ex 2.6 ~ 2.10)
5. Containers in development (ex 2.11)

### Important Notes
When you are pulling this repository, some directories (e.g. `example-frontend`, `example-backend`, etc) may not have Dockerfile that it needs to due .gitignore. I've prepared a Dockerfile necessary for those directories in here. 

Additionally, some of the `docker-compose` files may cause an issue due to `depends_on` config if you decided to run exercise in different order. If this is the case, comment out `depends_on` first and run. It'll build a containers that'll work so you start putting them back again for the next run.

To avoid any confusion, test each exercise sequentially.