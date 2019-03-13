#!/bin/bash

if [[ $UID == 0 ]]; then
	echo "Please do not run update_rospkgs.sh as root"
	exit 1
fi

RIPDEP=~/osu-uwrt/riptide_dependencies

echo "Submodule Update: imu_3dm_gx4"
cd ${RIPDEP}/src/imu_3dm_gx4/
git checkout master
git pull

echo ""
echo "Submodule Update: darknet_ros"
cd ${RIPDEP}/src/darknet_ros/
git checkout master
git pull

echo ""
cd ${RIPDEP}
sudo su -c src/installation/install_rospkgs.sh root