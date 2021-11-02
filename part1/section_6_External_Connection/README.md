# 6. Allowing external connections into containers

## Exercise 1.10 - Ports Open

Image `devopsdockeruh/simple-web-service` has port `8080` open. Use `-p` flag to access the contents with your browser.

Expected output: `{ message: "You connected to the following path: ... }`

--

## Solution

```docker
# Build docker file from ex1.7. Follow instruction on readme
# Once you have 'web-server' image, run following command:
docker run -p 80:8080 web-server

# Go to your browser and check go to `localhost`
```

_Note_: Since default port for `localhost` is 80, use that as your host port. If you have different port setup, use that instead.

## Output
Terminal should look like this:

Browser should look like this: