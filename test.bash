#!/bin/bash


cd ~/ros2_ws/
src/ament/ament_tools/scripts/ament.py build --build-tests --symlink-install
src/ament/ament_tools/scripts/ament.py test src
src/ament/ament_tools/scripts/ament.py test_results
