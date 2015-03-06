#!/bin/bash

set -o errexit

WS_PATH=/root/ros2_ws
mkdir -p $WS_PATH/src

curl --silent https://raw.githubusercontent.com/ros2/examples/pre_api_review/ros2.repos -o $WS_PATH/ros2.repos
vcs import $WS_PATH/src < $WS_PATH/ros2.repos

cd $WS_PATH
src/ament/ament_tools/scripts/ament.py build --build-tests --symlink-install
src/ament/ament_tools/scripts/ament.py test src
src/ament/ament_tools/scripts/ament.py test_results
