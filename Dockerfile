FROM debian:jessie
MAINTAINER Carles Amigó, fr3nd@fr3nd.net

RUN apt-get update && apt-get install -y \
      git \
      python-pip

ENV DOCKERCOMPOSE_VERSION 1.1.0

RUN pip install -e git+https://github.com/docker/compose.git@$DOCKERCOMPOSE_VERSION#egg=docker-compose

ENTRYPOINT [ "/usr/local/bin/docker-compose" ]
