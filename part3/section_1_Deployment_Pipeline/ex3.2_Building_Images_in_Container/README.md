# 1. Deployment Pipeline

## Exercise 3.2 - Building images inside of a container

Build your own build service, just like [Watchtower](https://containrrr.dev/watchtower/). Your service should:

1. Downloads repo from GitHub
1. Builds `Dockerfile` from root
1. Publishes it into Docker Hub 

Write a small script for this and also make a `Dockerfile` to run inside container.

---

## Solution

### **How to run**

1. Make sure you have `Dockerfile` and `project.sh` in same diretory. Then use the following command:
```docker
docker build -t <name_of_image> .
```
2. Once you're done building, run the image you just built with the following command:
```docker
docker run -v /var/run/docker.sock:/run/docker.sock -it <name_of_image>
```

3. When you are inside the container, follow the instructions (e.g. enter repo url, your docker hub credentials, etc.).

*NB: For this, I recommend using `https` format for cloning git repo. (e.g. https://github.com/ruikawahara/docker-hy.github.io.git)*

**WARNING:** This project is not secure and only used for exercise purpose. 

For the specific implementation, please refer to `project.sh` and `Dockerfile` located in this directory.

*External resource*: [How to install Docker CLI within your container.](https://stackoverflow.com/questions/55317195/run-command-from-one-container-to-another/55317547#55317547)