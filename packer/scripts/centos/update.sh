# install libyaml for building ruby
# pushd /tmp
# wget http://pyyaml.org/download/libyaml/yaml-0.1.6.tar.gz
# tar xzvf yaml-0.1.6.tar.gz
# pushd yaml-0.1.6
# ./configure --prefix=/usr/local
# make
# make install
# popd
# rm -rf yaml-0.1.6.tar.gz yaml.0.1.6
# popd

# echo "MRK DEBUG STATEMENT BECAYUSE IM LAZY"
# ls -al /usr/local/lib/
# pwd
# whoami

# export LD_LIBRARY_PATH=/usr/local/lib/:$LD_LIBRARY_PATH
# export LD_RUN_PATH=/usr/local/lib/:$LD_RUN_PATH

cat > /etc/yum.repos.d/epel.repo << EOM
[epel]
name=Extra Packages for Enterprise Linux $releasever - $basearch
mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=epel-\$releasever&arch=\$basearch
failovermethod=priority
enabled=1
gpgcheck=0
EOM

yum install -y libyaml-devel zlib-devel openssl-devel openssl libyaml