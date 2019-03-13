Riptide Dependencies
====================

This repository contains all of the dependencies for the [Riptide](https://github.com/osu-uwrt/riptide_software) and [Eddy](https://github.com/osu-uwrt/eddy_software) AUV Software Platforms. This is a one-stop-shop for installing everything you need from ROS Kinetic Kame to all of our ROS-related dependencies to all of our non-ROS-related dependencies.

Support Operating Systems: Ubuntu 16.04

**The Underwater Robotics Team**  
The Ohio State University

[Website](https://uwrt.engineering.osu.edu)

![OSU UWRT Logo](https://github.com/osu-uwrt/riptide_software/blob/master/logos/UWRT_Logo_small.png)

# How is This Repository Configured?

This repo is simply a collection of all of our dependencies for your own convenience. Although this repo is a catkin workspace, every ROS packages you see is actually setup as a **git submodule**. The [osu-uwrt](https://github.com/osu-uwrt) organization already has these ROS packages setup as forks from which we may update their code. If you wish to be a collaborator on any of these packages, then please go to our github page and fork the desired repo so you can start coding.

## ROS Packages
### [darknet_ros](https://github.com/osu-uwrt/darknet_ros)
This package contains the ROS interface for the machine-learning algorithm known as [You Only Look Once (YOLO)](https://pjreddie.com/darknet/yolo/) as well as the darknet source code itself.
### [imu_3dm_gx4](https://github.com/osu-uwrt/imu_3dm_gx4)
This is the driver for our [LordMicrostrain IMU 3DM-GX4](https://www.microstrain.com/inertial/3dm-gx4-25).

## Non-ROS Packages
### installation/
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

## Initializing the Darknet Submodule

# Installing Our Dependencies

## First-time Setup
