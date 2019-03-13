#!/bin/bash

if [[ $UID == 0 ]]; then
	echo "Please do not run install_everything.sh as root"
	exit 1
fi

RIPDEP=~/osu-uwrt/riptide_dependencies

${RIPDEP}/src/installation/install_ros_kinetic.sh
${RIPDEP}/src/update_rospkgs.sh
${RIPDEP}/src/installation/install_ceres.sh
${RIPDEP}/src/installation/install_acoustics.sh

echo "Installed all Riptide Dependencies"