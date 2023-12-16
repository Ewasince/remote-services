#!/bin/bash
set -e
set -x

docker-compose up --build

# docker exec -it gitlab-runner bash "echo '172.31.0.3  gitlab-service' >> /etc/hosts"
