FROM ubuntu:latest

WORKDIR /usr/src/app

RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y git

ENV DOCKER_VERSION=20.10.12
RUN curl -sfL -o docker.tgz "https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz" && \
  tar -xzf docker.tgz docker/docker --strip=1 --directory /usr/local/bin && \
  rm docker.tgz

COPY project.sh .

CMD ./project.sh