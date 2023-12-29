#!/bin/bash
set -e
set -x

docker exec gitlab cat /etc/gitlab/initial_root_password
docker exec -it gitlab-runner bash "echo '172.31.0.2 gitlab-service' >> /etc/hosts" # need tests
docker exec -it gitlab-runner gitlab-runner register
