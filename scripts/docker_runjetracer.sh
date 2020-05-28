#!/usr/bin/env bash

set -e

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
TEST_MOUNT="$ROOT/../test:/test"
ML_CONTAINER="jetracer:0.1"
CONTAINER_NAME="jetracer"

sh ./scripts/docker_run.sh -c $ML_CONTAINER -v $TEST_MOUNT -n $CONTAINER_NAME
