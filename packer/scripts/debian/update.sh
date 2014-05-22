#!/bin/bash -eux

apt-get update
apt-get -y upgrade

# install libyaml for building ruby
apt-get -y install libyaml-dev