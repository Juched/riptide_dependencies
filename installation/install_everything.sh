#!/bin/bash


install_ros_kinetic.sh
../update_rospkgs.sh
install_eigen.sh
install_ceres.sh
install_acoustics.sh

echo "Installed all Riptide Dependencies"