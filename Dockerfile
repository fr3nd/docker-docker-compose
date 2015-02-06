FROM debian:jessie
MAINTAINER Carles Amigó, fr3nd@fr3nd.net

ENV DOCKERCOMPOSE_VERSION 1.1.0-rc2

RUN apt-get update && apt-get install -y \
      git \
      python-pip

RUN pip install -e git+https://github.com/docker/fig.git@$DOCKERCOMPOSE_VERSION#egg=docker-compose

ENTRYPOINT [ "/usr/local/bin/docker-compose" ]
