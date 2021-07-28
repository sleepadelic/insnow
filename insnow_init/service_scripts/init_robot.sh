#!/bin/bash
source /home/nvidia/catkin_ws/devel/setup.bash
export ROS_MASTER_URI=http://192.168.1.2:11311/
export ROS_IP=192.168.1.2
export ROS_HOME=/home/nvidia/.ros
roslaunch insnow_init init_robot.launch
PID=$!
wait “$PID”
