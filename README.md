Riptide Dependencies
====================

This repository contains all of the dependencies for the [Riptide](https://github.com/osu-uwrt/riptide_software) and [Eddy](https://github.com/osu-uwrt/eddy_software) AUV Software Platforms. This is a one-stop-shop for installing everything you need including: ROS Kinetic Kame, specific ROS packages, and all other libraries.

Support Operating Systems: Ubuntu 16.04

**The Underwater Robotics Team**  
The Ohio State University

[Website](https://uwrt.engineering.osu.edu)

![OSU UWRT Logo](https://github.com/osu-uwrt/riptide_software/blob/master/logos/UWRT_Logo_small.png)

# How is This Repository Configured?

This repo is simply a collection of all of our dependencies for your own convenience. Although this repo is a catkin workspace, every ROS package you see is actually setup as a **git submodule** (note: when cloning this repo you will have to invoke the `--recursive` command). The [osu-uwrt](https://github.com/osu-uwrt) organization already has individual repos for these ROS packages from which we may update their code. If you wish to be a collaborator on any of these packages, then please go to our github page and fork the desired repo so you can start coding. Usage of git submodules allows us to have a single repo that links to all other repos and makes it easy to stay up-to-date as our dependencies change.

## ROS Packages
### [darknet_ros](https://github.com/osu-uwrt/darknet_ros)
This package contains the ROS interface for the machine-learning algorithm known as [You Only Look Once (YOLO)](https://pjreddie.com/darknet/yolo/) as well as the darknet source code itself.
### [imu_3dm_gx4](https://github.com/osu-uwrt/imu_3dm_gx4)
This is the driver for our [LordMicrostrain IMU 3DM-GX4](https://www.microstrain.com/inertial/3dm-gx4-25).
### ping_driver
Coming soon - this driver will interface with the Blue Robotics Ping Sonar sensor.

## Other Libraries
### installation
This folder contains a series of install scripts that will install the corresponding package to your Ubuntu machine.

# Initial Setup

## Cloning riptide_dependencies
Before you can install everything from the `riptide_dependencies` repo, you should first fork this repo (click "Fork" at the top-right of this page). When executing the commands below, you will need to enter the URL to your forked repo. From YOUR forked repo, click "Clone or download" at the top-right of the page, copy the URL, and then insert that URL in place of `<your_forked_repo>`. Do NOT forget the `src` at the end of the last line. This is a catkin-specific requirement that all source code be placed within a folder called `src`

NOTE: It is common to see brackets such as `<>` to act as placeholders for actual code. Make sure you replace the ENTIRE phrase `<your_forked_repo>` with the URL.
```
mkdir -p ~/osu-uwrt/riptide_dependencies/
cd ~/osu-uwrt/riptide_dependencies/
git clone --recursive <your_forked_repo> src
```

## Setting up Git Remotes
Since you just cloned your fork to your computer, your remote called `origin` will point to your fork. Now, create a new remote called `upstream` that points to this main repo.
```
cd ~/osu-uwrt/riptide_software/src/
git remote add upstream https://github.com/osu-uwrt/riptide_dependencies.git
```

Now, if you type:
```
git remote -v
```
You will see both a remote to your fork and to the main repo.

# Installing Our Dependencies

## First-time Setup
If you are setting up your computer for the first time to work with either the `riptide_software` or `eddy_software` repo, then you will likely need to install everything. Don't worry, we have an install script that does just that.
```
cd ~/osu-uwrt/riptide_dependencies/src/installation/
./install_everything.sh
```
Now, you may go back to the `riptide_software` or `eddy_software` repo and continue where you left off with the setup process.

## Installing/Updating Our ROS Packages
This repo is equipped with a script that handles all of this for you, and it will be updated as new submodules are added. This update script enters each submodule, pulls the latest code from master, and then re-installs them onto your computer.
```
cd ~/osu-uwrt/riptide_dependencies/src/
./update_rospkgs.sh
```

## Installing All Other Libraries
Search for the appropriate install script inside the `installation/` folder and run the script.
```
cd ~/osu-uwrt/riptide_dependencies/src/installation
./install_<some_library>.sh
```
