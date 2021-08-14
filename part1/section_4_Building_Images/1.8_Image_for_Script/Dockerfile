# Ubuntu base
FROM ubuntu:18.04

# Use /usr/src/app as working directory
WORKDIR /usr/src/app

# copy source.sh from local machine to container
COPY source.sh .

# add permission to source.sh
RUN chmod +x source.sh

# preinstall curl
RUN apt-get update && apt-get install -y curl && apt-get clean

# run source.sh
CMD ./source.sh