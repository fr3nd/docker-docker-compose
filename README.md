# docker-compose docker image

## Description

Fast, isolated development environments using Docker.

This image allows you to run docker-compose in a completelly containerized environment

## How to use this image

Run aws-compose to launch an application defined in fig.yaml:

```
docker run \
  --rm \
  -t \
  -v ~/.dockercfg:/root/.dockercfg:ro \
  -v $(pwd)/fig.yml:/fig.yml:ro \
  -v /var/run/docker.sock:/var/run/docker.sock:rw \
  fr3nd/docker-compose \
  -f /fig.yml up
```
