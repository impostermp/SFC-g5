#!/bin/bash
docker_username_lower=$(echo "$docker_username" | tr '[:upper:]' '[:lower:]')
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}"
[[ -z "${docker_username}" ]] && DockerRepo='' || DockerRepo="ghcr.io/${docker_username_lower}/"
docker build -t "${DockerRepo}micronaut-app:latest" -t "${DockerRepo}micronaut-app:1.0-$Tag" app/