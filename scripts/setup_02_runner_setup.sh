#!/bin/bash
set -e
set -x

docker exec gitlab cat /etc/gitlab/initial_root_password
docker exec -it gitlab-runner gitlab-runner register
