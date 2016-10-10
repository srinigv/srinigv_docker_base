#!/bin/bash
set -e

apt-get update


# fix some issues with APT packages.
# see https://github.com/dotcloud/docker/issues/1024
dpkg-divert --local --rename --add /sbin/initctl
ln -sf /bin/true /sbin/initctl

# upgrade all packages.
echo "initscripts hold" | dpkg --set-selections
apt-get upgrade -y --no-install-recommends

# install packages
apt-get install -y --no-install-recommends apt-transport-https software-properties-common
apt-get install -y --no-install-recommends net-tools vim wget git curl tig python-software-properties
apt-get install -y --no-install-recommends htop openssh-server

# clean cache
apt-get clean
