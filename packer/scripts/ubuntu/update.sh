#!/bin/bash -eux
apt-get update
apt-get -y upgrade

apt-get -y install linux-headers-$(uname -r)

# update package index on boot
cat <<EOF > /etc/init/refresh-apt.conf
description "update package index"
start on networking
task
exec /usr/bin/apt-get update
EOF

# install libyaml for building ruby
apt-get -y install libyaml-0-2 libyaml-dev
