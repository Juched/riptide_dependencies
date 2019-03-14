#!/bin/sh

# Install ROS Kinetic Kame on Ubuntu 16.04
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get -y install ros-kinetic-desktop-full
sudo rosdep init
rosdep update

s1="source /opt/ros/kinetic/setup.bash"
if ! grep -q "$s1" ~/.bashrc; then
    echo $s1 ~/.bashrc
fi
source ~/.bashrc

sudo apt-get -y install python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo apt-get -y install ros-kinetic-pointgrey-camera-driver 
sudo apt-get -y install ros-kinetic-control-toolbox
sudo apt-get -y install ros-kinetic-joy

echo "Installed ROS Kinetic Kame"