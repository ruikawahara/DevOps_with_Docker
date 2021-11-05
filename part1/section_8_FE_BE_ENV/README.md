# 8. Front End, Back End, Environment Project

## Exercise 1.12 - Hello, Frontend!

Given [example-frontend](https://github.com/docker-hy/material-applications/tree/main/example-frontend) directory, create `Dockerfile`. Result should be displayed on `http://localhost:5000/`.

--- 

## Solution

Before making `Dockerfile`, make sure you are in `example-frontend` directory that you just cloned.

Using `Dockerfile` located in `example-frontend`, run following commands:

```docker
# build Dockerfile
docker build . -t frontend

# run dockerfile
docker run -p 5000:5000 frontend
```

See `Dockerfile` located in `example-frontend` directory for contents of dockerfile.

---

## Output

--- 

## Exercise 1.13 - Hello, Backend!

---

## Solution

---

## Output

---

## Exercise 1.14 - Environment

---

## Solution

---

## Output