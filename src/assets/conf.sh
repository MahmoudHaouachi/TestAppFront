#!/bin/bash

#update
sudo apt-get update

#install nginx
sudo apt-get install -y nginx

#configure nginx
sudo rm -rf /etc/nginx/nginx.conf
sudo mv /home/mahmoud/vstsagent/_work/r1/a/_SoloFrontend CI/dist/test-ui/assets/nginx.conf /etc/nginx/




PUBLIC_IP=`curl ipinfo.io/ip`
echo $PUBLIC_IP 
cd /home/mahmoud/vstsagent/_work/r1/a/_SoloFrontend CI/dist/test-ui/assets/data
sudo rm -rf appConfig.json
echo '{ "serverURL" : "'"$PUBLIC_IP"'"}' > appConfig.json

#restart nginx
sudo service nginx restart
