FROM alpine:3.1
MAINTAINER Carles Amigó, fr3nd@fr3nd.net

RUN apk --update add git python py-pip

ENV DOCKERCOMPOSE_VERSION 1.2.0

RUN pip install -e git+https://github.com/docker/compose.git@$DOCKERCOMPOSE_VERSION#egg=docker-compose

ENTRYPOINT [ "/usr/bin/docker-compose" ]
