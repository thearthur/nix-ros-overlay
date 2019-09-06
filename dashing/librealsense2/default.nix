
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gtk3, ament-cmake, udev, pkg-config, libusb1, glfw3, linuxHeaders, openssl, libGLU, libGL }:
buildRosPackage {
  pname = "ros-dashing-librealsense2";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/librealsense-release/archive/release/dashing/librealsense2/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "8200ccf50818a19a4dcd625f099e960c38285c2181cef249da10fae25206ee07";
  };

  buildType = "ament_cmake";
  buildInputs = [ gtk3 udev pkg-config libusb1 glfw3 linuxHeaders openssl libGLU libGL ];
  propagatedBuildInputs = [ gtk3 udev libusb1 glfw3 linuxHeaders openssl libGLU libGL ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Library for capturing data from the Intel(R) RealSense(TM) SR300 and D400 cameras. This effort was initiated to better support researchers, creative coders, and app developers in domains such as robotics, virtual reality, and the internet of things. Several often-requested features of RealSense(TM); devices are implemented in this project, including multi-camera capture.'';
    license = with lib.licenses; [ asl20 ];
  };
}