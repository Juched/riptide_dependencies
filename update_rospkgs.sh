#!/bin/bash

if [[ $UID == 0 ]]; then
	echo "Please do not run update_rospkgs.sh as root"
	exit 1
fi

echo "SUBMODULE: imu_3dm_gx4"
cd imu_3dm_gx4/
git checkout master
git pull
cd ..

echo ""
echo "SUBMODULE: darknet_ros"
cd darknet_ros/
git checkout master
git pull
cd ..

echo ""
cd ..
sudo su -c src/installation/install_rospkgs.sh root
