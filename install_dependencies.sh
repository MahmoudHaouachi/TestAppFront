#!/bin/bash

yum update
curl -sL https://rpm.nodesource.com/setup_8.x | bash -
sudo yum install -y nodejs

sudo yum install epel-release
sudo yum install -y nginx


echo Installing source NPM dependencies...
# Need https driver.
sudo yum install -y varnish
# Install Yarn.
curl -sL https://dl.yarnpkg.com/rpm/yarn.repo -o /etc/yum.repos.d/yarn.repo
yum install -y yarn
# Install Angular CLI

