
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, geometry-msgs, message-filters, nav-msgs, octomap, octomap-msgs, octomap-ros, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-octomap-server";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_mapping-release/archive/release/jazzy/octomap_server/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "ff7ebb2ba117e255a9ab0b154a37d325a2911856fdfca17b7543fd1dde95ac49";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs message-filters nav-msgs octomap octomap-msgs octomap-ros pcl pcl-conversions pcl-ros rclcpp rclcpp-components sensor-msgs std-msgs std-srvs tf2 tf2-eigen tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "octomap_server loads a 3D map (as Octree-based OctoMap) and distributes it to other nodes in a compact binary format. It also allows to incrementally build 3D OctoMaps, and provides map saving in the node octomap_saver.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
