#!/usr/bin/env bash

set -e

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
TEST_MOUNT="$ROOT/../test:/test"
CONTAINER_IMAGE="donkey:0.1"
CONTAINER_NAME="donkey"

echo "CONTAINER_IMAGE: $CONTAINER_IMAGE"
echo "CONTAINER_NAME: $CONTAINER_NAME"
echo "USER_VOLUME:     $USER_VOLUME"
echo "USER_COMMAND:    '$USER_COMMAND'"

sudo docker run --runtime nvidia -itd --rm --privileged --network host \
	    --env=LOCAL_USER_ID="$(id -u)" \
	    -v /home/brian/mycar/:/mycar \
	    --name $CONTAINER_NAME $CONTAINER_IMAGE 

