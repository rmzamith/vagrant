#!/bin/bash

#update packages
yum update

#install wget
yum install -y wget

#install zip/unzip
yum install -y zip unzip

#install git
yum install -y git

#install python
yum install -y https://centos7.iuscommunity.org/ius-release.rpm
yum update
yum install -y python36u python36u-libs python36u-devel python36u-pip

#install aws cli
python3.6 -m pip install awscli --upgrade --user

#install terraform
wget https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip
unzip terraform_0.11.7_linux_amd64.zip
rm terraform_0.11.7_linux_amd64.zip
chmod 755 terraform
mv terraform /usr/bin

#install terragrunt
wget https://github.com/gruntwork-io/terragrunt/releases/download/v0.16.3/terragrunt_linux_amd64
chmod 755 terragrunt_linux_amd64
mv terragrunt_linux_amd64 /usr/bin/terragrunt

#install packer
wget https://releases.hashicorp.com/packer/1.2.5/packer_1.2.5_linux_amd64.zip
unzip packer_1.2.5_linux_amd64.zip
rm packer_1.2.5_linux_amd64.zip
mv packer /usr/bin