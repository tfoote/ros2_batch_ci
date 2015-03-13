#!/bin/bash

set -o errexit
export PYTHONUNBUFFERED=1
# Fetch the sources to build
WS_PATH=`pwd`/ros2_ws
mkdir -p $WS_PATH

python create_dockerfile.py Dockerfile.template docker_context/Dockerfile
docker build -t ros2_test docker_context
docker run -i -v $WS_PATH:/home/rosbuild/ros2_ws ros2_test
