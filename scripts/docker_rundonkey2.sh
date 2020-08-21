#!/usr/bin/env bash

set -e

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
TEST_MOUNT="/home/brian/mycar:/mycar"
ML_CONTAINER="donkey:0.3"
CONTAINER_NAME="donkey"

sh ./scripts/docker_run.sh -c $ML_CONTAINER -v $TEST_MOUNT -n $CONTAINER_NAME
