#!/bin/bash
source /home/nvidia/catkin_ws/devel/setup.bash
export ROS_MASTER_URI=http://192.168.1.2:11311/
export ROS_IP=192.168.1.2
roscore & while ! echo exit | nc localhost 11311 > /dev/null; do sleep 1; done
