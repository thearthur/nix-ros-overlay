
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-cbg-executor";
  version = "0.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_cbg_executor/0.17.1-1.tar.gz";
    name = "0.17.1-1.tar.gz";
    sha256 = "603a3635541f62583c4e4f13da086ccf5f5fb2944ee9efeba5712696b072153f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example for multiple Executor instances in one process, using the callback-group-level interface of the Executor class.'';
    license = with lib.licenses; [ asl20 ];
  };
}
