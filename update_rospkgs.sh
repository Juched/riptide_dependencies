#!/bin/bash



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
src/installation/install_rospkgs.sh
