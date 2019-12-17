#!/bin/bash

docker exec -it gitlab-runner1 \
  gitlab-runner register \
    --non-interactive \
    --registration-token $REGISTRATION_TOKEN \
    --locked=false \
    --description docker-stable \
    --url $URL \
    --executor docker \
    --docker-image docker:stable \
    --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
    --docker-network-mode gitlab-network