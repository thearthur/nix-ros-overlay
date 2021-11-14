
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-ros, menge-vendor, opencv3, qt5, rclcpp, rmf-building-sim-common, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-foxy-rmf-building-sim-gazebo-plugins";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/foxy/rmf_building_sim_gazebo_plugins/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "1262678c8e323bf13cd4f5dd10f4216bdbb4ec5d6dfa5afb9831f0e683f17005";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo-dev gazebo-ros menge-vendor opencv3 qt5.qtbase rclcpp rmf-building-sim-common rmf-fleet-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Gazebo plugins so that buildings generated by rmf_building_map_tools can
    talk to the ROS 2-based systems in the rmf_traffic_ros2 package.'';
    license = with lib.licenses; [ asl20 ];
  };
}