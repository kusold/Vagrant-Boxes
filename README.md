# Vagrant-Builds

[![Build Status](http://img.shields.io/travis/opscode/bento.svg)][travis]

[travis]: https://travis-ci.org/opscode/bento

## About
This project is forked from the excellent [opscode/bento](https://github.com/opscode/bento) project.

Bento is a project that encapsulates [Packer](http://packer.io) templates for building
[Vagrant](http://vagrantup.com) baseboxes.

These box were built to be as minimal as possible. It includes a compiled version of Ruby (installed to `/opt/ruby` to avoid conflicts) and Puppet.

I currently am only building for Virtualbox, so the VMWare boxes are untested.

## Current Baseboxes

The following baseboxes are publicly available and were built using
this project.

### VirtualBox

These baseboxes were all built using a Fedora 20 host running VirtualBox 4.3.12, and have that format of Guest Extensions.

|Box                                                                                            | Kernel                | Issue                       | VBox GA Version | Ruby Version | Puppet Version |
|-----------------------------------------------------------------------------------------------|-----------------------|-----------------------------|-----------------|--------------|----------------|
|[kusold/centos-5-i386-puppet](https://vagrantcloud.com/kusold/centos-5-i386-puppet)            | 2.6.18-371.el5        | CentOS release 5.10 (Final) | 4.3.12          | 2.1.2p95     | 3.6.1          |
|[kusold/centos-5-amd64-puppet](https://vagrantcloud.com/kusold/centos-5-amd64-puppet)          | 2.6.18-371.el5        | CentOS release 5.10 (Final) | 4.3.12          | 2.1.2p95     | 3.6.1          |
|[kusold/centos-6-i386-puppet](https://vagrantcloud.com/kusold/centos-6-i386-puppet)            | 2.6.32-431.el6.i686   | CentOS release 6.5 (Final)  | 4.3.12          | 2.1.2p95     | 3.6.1          |
|[kusold/centos-6-amd64-puppet](https://vagrantcloud.com/kusold/centos-6-amd64-puppet)          | 2.6.32-431.el6.x86_64 | CentOS release 6.5 (Final)  | 4.3.12          | 2.1.2p95     | 3.6.1          |
|[kusold/debian-6-i386-puppet](https://vagrantcloud.com/kusold/debian-6-i386-puppet)            | 2.6.32-5-686          | Debian GNU/Linux 6.0        | 4.3.12          | 2.1.2p95     | 3.6.1          |
|[kusold/debian-6-amd64-puppet](https://vagrantcloud.com/kusold/debian-6-amd64-puppet)          | 2.6.32-5-amd64        | Debian GNU/Linux 6.0        | 4.3.12          | 2.1.2p95     | 3.6.1          |
|[kusold/debian-7-i386-puppet](https://vagrantcloud.com/kusold/debian-7-i386-puppet)            | 3.2.0-4-686-pae       | Debian GNU/Linux 7          | 4.3.12          | 2.1.2p95     | 3.6.1          |
|[kusold/debian-7-amd64-puppet](https://vagrantcloud.com/kusold/debian-7-amd64-puppet)          | 3.2.0-4-amd64         | Debian GNU/Linux 7          | 4.3.12          | 2.1.2p95     | 3.6.1          |
|[kusold/ubuntu-10.04-i386-puppet](https://vagrantcloud.com/kusold/ubuntu-10.04-i386-puppet)    | 2.6.32-38-server      | Ubuntu 10.04.4 LTS          | 4.3.12          | 2.1.2p95     | 3.6.2          |
|[kusold/ubuntu-10.04-amd64-puppet](https://vagrantcloud.com/kusold/ubuntu-10.04-amd64-puppet)  | 2.6.32-38-server      | Ubuntu 10.04.4 LTS          | 4.3.12          | 2.1.2p95     | 3.6.1          |
|[kusold/ubuntu-12.04-i386-puppet](https://vagrantcloud.com/kusold/ubuntu-12.04-i386-puppet)    | 3.11.0-15-generic     | Ubuntu 12.04.4 LTS          | 4.3.12          | 2.1.2p95     | 3.6.2          |
|[kusold/ubuntu-12.04-amd64-puppet](https://vagrantcloud.com/kusold/ubuntu-12.04-amd64-puppet)  | 3.11.0-15-generic     | Ubuntu 12.04.4 LTS          | 4.3.12          | 2.1.2p95     | 3.6.2          |
|[kusold/ubuntu-12.10-i386-puppet](https://vagrantcloud.com/kusold/ubuntu-12.10-i386-puppet)    | 3.5.0-17-generic      | Ubuntu 12.10                | 4.3.12          | 2.1.2p95     | 3.6.2          |
|[kusold/ubuntu-12.10-amd64-puppet](https://vagrantcloud.com/kusold/ubuntu-12.10-amd64-puppet)  | 3.5.0-17-generic      | Ubuntu 12.10                | 4.3.12          | 2.1.2p95     | 3.6.2          |
|[kusold/ubuntu-13.10-i386-puppet](https://vagrantcloud.com/kusold/ubuntu-13.10-i386-puppet)    | 3.11.0-12-generic     | Ubuntu 13.10                | 4.3.12          | 2.1.2p95     | 3.6.2          |
|[kusold/ubuntu-13.10-amd64-puppet](https://vagrantcloud.com/kusold/ubuntu-13.10-amd64-puppet)  | 3.11.0-12-generic     | Ubuntu 13.10                | 4.3.12          | 2.1.2p95     | 3.6.2          |
|[kusold/ubuntu-14.04-i386-puppet](https://vagrantcloud.com/kusold/ubuntu-14.04-i386-puppet)    | 3.13.0-24-generic     | Ubuntu 14.04 LTS            | 4.3.12          | 2.1.2p95     | 3.6.2          |
|[kusold/ubuntu-14.04-amd64-puppet](https://vagrantcloud.com/kusold/ubuntu-14.04-amd64-puppet)  | 3.13.0-24-generic     | Ubuntu 14.04 LTS            | 4.3.12          | 2.1.2p95     | 3.6.2          |

## Build Your Own Boxes

First, install [Packer](http://packer.io) and then clone this project.

Inside the `packer` directory, a JSON file describes each box that can be built. You can use `packer build` to build the
boxes.

    $ packer build debian-7.2.0-i386.json

If you want to use a another mirror site, use mirror variable.

    $ packer build -var 'mirror=http://ftp.jaist.ac.jp/pub/Linux/debian-cdimage/release' debian-7.2.0-i386.json

If you only have VMware or VirtualBox available, you may also tell Packer to build only that box.

    $ packer build -only=virtualbox-iso debian-7.2.0-i386.json

Congratulations! You now have box(es) in the ../builds directory that you can then add to Vagrant and start testing cookbooks.

## Bugs and Issues

Please use GitHub issues to report bugs, features, or other problems.

## License & Authors

These basebox templates were converted from [veewee](https://github.com/jedi4ever/veewee)
definitions originally based on [work done by Tim Dysinger](https://github.com/dysinger/basebox) to
make "Don't Repeat Yourself" (DRY) modular baseboxes. Thanks Tim!

Then this project was forked from the excellent [opscode/bento](https://github.com/opscode/bento) project.

```text
Copyright 2012-2014, Chef Software, Inc. (<legal@getchef.com>)
Copyright 2011-2012, Tim Dysinger (<tim@dysinger.net>)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
