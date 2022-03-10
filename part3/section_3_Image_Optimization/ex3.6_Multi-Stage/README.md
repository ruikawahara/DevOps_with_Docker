# 3. Optimizing Dockerfile

## Exercise 3.6 - Multi-Stage Builds

This exercise is divided into two parts:

**Part 1 - Frontend**

Do a multi-stage build for frontend project. You must:
- Build with [README instruction](https://github.com/docker-hy/material-applications/tree/main/example-frontend).
- Store build assets in `build` folder.

**Part 2 - Backend**

Do a multi-stage build for backend project. You must:
- Build binary in build stage.
- Run the binary from `scratch`.
- Image must be less than 25 MB

---

## Solution

Following are the new implementation of optimized images:

### **Frontend**
```Dockerfile
# Use node to build
FROM node:14 as build-stage

WORKDIR /usr/src/app

COPY . .

RUN npm install && \
    npm run build 


# Use alpine for minimal size container
FROM alpine:latest

EXPOSE 5000

WORKDIR /usr/src/app

# copy /build directory from node container to alpine container
COPY --from=build-stage /usr/src/app/build  ./build

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN apk add --no-cache npm && \
    npm install -g serve && \
    adduser -D userapp && \
    chown -R userapp .

USER userapp

CMD ["serve", "-s", "-l", "5000", "build"]
```

### **Backend**
```Dockerfile
# Use alpine golang for build stage
FROM golang:1.16-alpine as build-stage

# Choose working directory
WORKDIR /usr/src/app

# # Copy contents of 'example-backend' in container. 
COPY . .

# Build go (based on simple-web-server example)
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build


FROM scratch

# Set port to 8080
EXPOSE 8080

# Set environment variable to your localhost. 
ENV REQUEST_ORIGIN=http://localhost:5000 \
    REDIS_HOST=redis

# Copy built item from build-stage to scratch container
COPY --from=build-stage /usr/src/app/server /usr/src/app/server

WORKDIR /usr/src/app/

# Use ENTRYPOINT to activate backend
ENTRYPOINT [ "/usr/src/app/server" ]

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
