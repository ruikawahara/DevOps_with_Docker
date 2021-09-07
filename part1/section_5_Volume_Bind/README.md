# 5. Volume: bind mount

## Exercise 1.9

-- 

## Solution

``` docker
# pull image.
docker pull devopsdockeruh/simple-web-service

# Use -v flag to mount logs into your local machine
docker run -v "$(pwd)/text.log:/usr/src/app/text.log" devopsdockeruh/simple-web-service
```


## Output