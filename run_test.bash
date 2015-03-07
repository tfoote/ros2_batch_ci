#!/bin/bash

set -o errexit

# Fetch the sources to build
WS_PATH=`pwd`/ros2_ws
mkdir -p $WS_PATH


docker build -t ros2_test docker_context
docker run -i -v $WS_PATH:/root/ros2_ws ros2_test
