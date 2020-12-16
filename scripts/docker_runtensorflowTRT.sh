#!/usr/bin/env bash

#sudo systemctl restart docker
set -e

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
USER_VOLUME1="/home/brian/models:/models"
USER_VOLUME2="/home/brian/projects:/projects"
CONTAINER_NAME="tensorflowTRT"
CONTAINER_IMAGE="tensorflowTRT:0.1"

echo "CONTAINER_IMAGE: $CONTAINER_IMAGE"
echo "CONTAINER_NAME: $CONTAINER_NAME"
echo "USER_VOLUME1:     $USER_VOLUME1"
echo "USER_VOLUME2:     $USER_VOLUME2"

# run the container

sudo docker run -it --rm --gpus all --ipc=host --network host \
    --name $CONTAINER_NAME -v $USER_VOLUME1 -v $USER_VOLUME2 $CONTAINER_IMAGE $USER_COMMAND
