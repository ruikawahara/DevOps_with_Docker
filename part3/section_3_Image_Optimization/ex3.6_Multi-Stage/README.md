# 3. Optimizing Dockerfile

## Exercise 3.6 - Multi-Stage Builds

This exercise is divided into two parts:

**Part 1 - Frontend**

Do a multi-stage build for frontend project. You must:
- Build with [README instruction](https://github.com/docker-hy/material-applications/tree/main/example-frontend).
- Store build assets in `build` folder.

**Part 2 - Backend**

---

## Solution

Following are the new implementation of optimized images:

### **Frontend**
```Dockerfile
FROM node:14 as build-stage

WORKDIR /usr/src/app

COPY . .

RUN npm install && \
    npm run build 

FROM node:14-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/build  ./build

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm install -g serve && \
    adduser -D userapp && \
    chown -R userapp .

USER userapp

CMD ["serve", "-s", "-l", "5000", "build"]
```

### **Backend**
```Dockerfile
```

---

## Output

<!-- ### *Previous Implementation: (from last exercise)*
![e3.4.2 - Before Optimization](../../img/e3.4.2.PNG)

### *Current Implementation:*
![e3.5 - After Optimization](../../img/e3.5.PNG)

With alpine variant, we see the following improvements:
- `Frontend`: 1.18 GB -> 346 MB
- `Backend`: 1.07 GB -> 447 MB -->
