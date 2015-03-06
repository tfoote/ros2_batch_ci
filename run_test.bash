#!/bin/bash

# Fetch the sources to build
WS_PATH=`pwd`/ros2_ws
mkdir -p $WS_PATH
curl --silent https://raw.githubusercontent.com/ros2/examples/pre_api_review/ros2.repos -o $WS_PATH/ros2.repos
vcs import $WS_PATH/src < $WS_PATH/ros2.repos

docker build -t ros2_test .
docker run -ti -v $WS_PATH:/root/ros2_ws ros2_test
