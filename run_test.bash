#!/bin/bash

# Fetch the sources to build
WS_PATH=`pwd`/ros2_ws
mkdir -p $WS_PATH


docker build -t ros2_test .
docker run -v $WS_PATH:/root/ros2_ws ros2_test
