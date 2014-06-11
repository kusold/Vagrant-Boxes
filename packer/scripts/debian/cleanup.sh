#!/bin/bash -eux

# Remove ruby build dependencies
apt-get -y purge libyaml-dev build-essential libssl-dev zlib1g-dev
apt-get -y autoremove
apt-get -y clean
rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.?
rm -f /tmp/chef*deb
