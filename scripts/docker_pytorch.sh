#!/usr/bin/env bash

set -e

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
USER_VOLUME="/home/brian/models:/models"
CONTAINER_NAME="pytorch"
CONTAINER_IMAGE="nvcr.io/nvidia/pytorch:20.09-py3"
USER_COMMAND="/bin/sh"

echo "CONTAINER_IMAGE: $CONTAINER_IMAGE"
echo "CONTAINER_NAME: $CONTAINER_NAME"
echo "USER_VOLUME:     $USER_VOLUME"
echo "USER_COMMAND:    '$USER_COMMAND'"

# run the container

sudo docker run -it --rm --gpus all --ipc=host \
    --name $CONTAINER_NAME -v $USER_VOLUME $CONTAINER_IMAGE $USER_COMMAND