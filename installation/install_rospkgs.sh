#!/bin/bash

if [[ $UID != 0 ]]; then
	echo "Please run install_rosdeps.sh as root"
	exit 1
fi

cd ~/osu-uwrt/riptide_dependencies
source /opt/ros/kinetic/setup.bash
catkin_make -DCMAKE_INSTALL_PREFIX=/opt/ros/kinetic install

echo "Installed all ROS packages"