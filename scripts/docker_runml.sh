#!/usr/bin/env bash

set -e

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
TEST_MOUNT="$ROOT/../test:/test"
ML_CONTAINER="l4t-ml:r32.4.2-py3"
CONTAINER_NAME="l4t-ml"

sh ./scripts/docker_run.sh -c $ML_CONTAINER -v $TEST_MOUNT -n $CONTAINER_NAME
