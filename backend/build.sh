#!/bin/bash
docker_username_lower=$(echo "$docker_username" | tr '[:upper:]' '[:lower:]')
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}"
[[ -z "${docker_username}" ]] && DockerRepo='' || DockerRepo="ghcr.io/${docker_username_lower}/"
cd backend  # Navigate to the backend directory
docker build -t "${DockerRepo}simple-fortune-cookie-backend:latest" -t "${DockerRepo}simple-fortune-cookie-backend:1.0-$Tag" . 