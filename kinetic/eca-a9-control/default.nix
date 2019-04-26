
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-trajectory-control, catkin, uuv-teleop }:
buildRosPackage {
  pname = "ros-kinetic-eca-a9-control";
  version = "0.1.6";

  src = fetchurl {
    url = https://github.com/uuvsimulator/eca_a9-release/archive/release/kinetic/eca_a9_control/0.1.6-0.tar.gz;
    sha256 = "6682d58b798d3919101315d86da3778b4564a9f4cf6a69082aa4dca2930e8fe0";
  };

  propagatedBuildInputs = [ uuv-trajectory-control uuv-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration and launch files to control the ECA A9 AUV'';
    #license = lib.licenses.Apache-2.0;
  };
}
