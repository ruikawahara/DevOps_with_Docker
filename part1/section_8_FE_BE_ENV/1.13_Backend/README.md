# 8. Front End, Back End, Environment Project

## Exercise 1.13 - Hello, Backend!

Given [example-backend](https://github.com/docker-hy/material-applications/tree/main/example-backend), create `Dockerfile` that runs on port 8080. 

Once you run your `Dockerfile`, go to [http://localhost:8080/ping](http://localhost:8080/ping). You should get _pong_ as a response.

---

## Solution

Copy `Dockerfile` located in this directory into `example-backend` directory, navigate inside `example-backend`, and run the following commands:

```Docker
# Build dockerfile
docker build . -t backend

# Run docker image with correct port
docker run -p 8080:8080 backend
```

You should see your result in [http://localhost:8080/ping](http://localhost:8080/ping).

---

## Output