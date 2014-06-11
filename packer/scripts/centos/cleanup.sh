#!/bin/bash -eux
# These were only needed for building VMware/Virtualbox extensions:
rm -rf /etc/yum.repos.d/epel.repo
yum -y remove gcc cpp kernel-devel kernel-headers perl libyaml-devel zlib-devel openssl-devel
yum -y clean all
rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.?
rm -f /tmp/chef*rpm

# clean up redhat interface persistence
rm -f /etc/udev/rules.d/70-persistent-net.rules
if [ -r /etc/sysconfig/network-scripts/ifcfg-eth0 ]; then
  sed -i 's/^HWADDR.*$//' /etc/sysconfig/network-scripts/ifcfg-eth0
  sed -i 's/^UUID.*$//' /etc/sysconfig/network-scripts/ifcfg-eth0
fi
