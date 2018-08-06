#!/bin/bash

yum update
curl -sL https://rpm.nodesource.com/setup_8.x | bash -
sudo yum install -y nodejs

sudo yum install epel-release
sudo yum install -y nginx


echo Installing source NPM dependencies...
# Need https driver.
sudo yum install varnish
# Install Yarn.
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo yum -y install yarn
# Install Angular CLI
yarn global add @angular/cli@1.4.2

