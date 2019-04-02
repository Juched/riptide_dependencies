#!/bin/bash

if [[ $UID == 0 ]]; then
	echo "Please do not run install_everything.sh as root"
	exit 1
fi

install_ros_kinetic.sh
../update_rospkgs.sh
install_eigen.sh
install_ceres.sh
install_acoustics.sh

echo "Installed all Riptide Dependencies"