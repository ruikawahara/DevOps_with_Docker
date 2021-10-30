# 5. Volume: bind mount

## Exercise 1.9

--

## Solution

```docker
# Change into whatever directory you wish to utilize.
cd <whatever_directory>

# check you are in correct directory
pwd

# make text log file
touch text.log

# pull image.
docker pull devopsdockeruh/simple-web-service

# Use -v flag to mount logs into your local machine
docker run -v "$(pwd)/text.log:/usr/src/app/text.log" devopsdockeruh/simple-web-service

# When done, use ctrl + c to exit
```

## Output

See `text.log` file that is located in this directory.
