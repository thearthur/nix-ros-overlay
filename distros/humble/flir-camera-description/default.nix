
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-flir-camera-description";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/humble/flir_camera_description/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "8201bdeba40fd3c63ba85693475ae3d0899695d46aecf800a444106afac2900c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''FLIR camera Description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}