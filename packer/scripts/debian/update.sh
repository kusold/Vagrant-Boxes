#!/bin/bash -eux

apt-get update
apt-get -y upgrade

# install dependencies for building ruby
apt-get -y install libyaml-0-2 libyaml-dev build-essential libssl-dev zlib1g-dev