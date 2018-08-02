# vagrant
A couple of vagrant configs.

For each image here is what is needed for spining it up.

#### centos7
Image that contain a workspace ready for work with terraform, teragrunt, packer ans aws cli.
###### instructions
1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
1. Install [Vagrant](https://www.vagrantup.com/downloads.html).
1. Go to *centos7* directory by running something like `cd <workspace>/vagrant/centos7>`.
1. Install Vagrant Vbguest plugin by running `vagrant plugin install vagrant-vbguest`.
1. Install Vagrant Disksize plugin by running `vagrant plugin install vagrant-disksize`
1. Spin up the box by running `vagrant up`.
1. ssh into the box using `vagrant ssh`.

#### ubuntu docker
Image that contain a workspace ready for work with terraform, teragrunt, packer ans aws cli.
###### instructions
1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
1. Install [Vagrant](https://www.vagrantup.com/downloads.html).
1. Go to *ubuntu_docker* directory by running something like `cd <workspace>/vagrant/ubuntu_docker>`.
1. Install Vagrant Vbguest plugin by running `vagrant plugin install vagrant-vbguest`.
1. Install Vagrant Disksize plugin by running `vagrant plugin install vagrant-disksize`
1. Spin up the box by running `vagrant up`.
1. ssh into the box using `vagrant ssh`.
