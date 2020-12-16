#!/usr/bin/env bash

set -e
			  
# TensorFlow + 
sh ./scripts/docker_build.sh tensorflowtrt:0.1 Dockerfile.tensorflowTRT

