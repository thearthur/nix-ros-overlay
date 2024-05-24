
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-jazzy-ecl-time-lite";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/jazzy/ecl_time_lite/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "59db5adc94abf7b6bb525be1f3c46b15b35ee5a458c47904ddad46b42b13c480";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-errors ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Provides a portable set of time functions that are especially useful for
     porting other code or being wrapped by higher level c++ classes.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
