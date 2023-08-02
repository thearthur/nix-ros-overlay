
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, eigen, ffmpeg, freeglut, freenect, geometry-msgs, glfw3, jsoncpp, libjpeg, libpcap, libusb1, nav-msgs, octomap, opencv, openni2, python3Packages, pythonPackages, rclcpp, ros-environment, rosbag2-storage, sensor-msgs, std-msgs, stereo-msgs, suitesparse, tf2, tf2-msgs, tinyxml-2, udev, wxGTK, xorg, zlib }:
buildRosPackage {
  pname = "ros-iron-mrpt2";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt2-release/archive/release/iron/mrpt2/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "613bcfa3c5637b3c8622848d05b391e45d6a6e8982c728e9a1cecfe141f7bb5e";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake ffmpeg freenect jsoncpp libjpeg libpcap libusb1 openni2 python3Packages.pip pythonPackages.pybind11 ros-environment tinyxml-2 udev wxGTK zlib ];
  propagatedBuildInputs = [ cv-bridge eigen freeglut geometry-msgs glfw3 nav-msgs octomap opencv rclcpp rosbag2-storage sensor-msgs std-msgs stereo-msgs suitesparse tf2 tf2-msgs xorg.libXrandr xorg.libXxf86vm ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Mobile Robot Programming Toolkit (MRPT) version 2.x'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}