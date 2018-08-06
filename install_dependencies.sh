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
exit
npm i -g yarn
# Install Angular CLI
yarn global add @angular/cli@1.4.2

