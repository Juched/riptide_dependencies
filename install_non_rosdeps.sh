#!/bin/bash

if [[ $UID == 0 ]]; then
	echo "Please do not run install_non_rosdeps.sh as root"
	exit 1
fi

RIPDEP=~/osu-uwrt/riptide_dependencies

sh ${RIPDEP}/src/non_rosdeps/install_ceres.sh
sh ${RIPDEP}/src/non_rosdeps/install_acoustics.sh
