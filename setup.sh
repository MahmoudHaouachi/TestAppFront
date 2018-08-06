#!/bin/bash
sudo su 


PUBLIC_IP=`wget http://169.254.169.254/latest/meta-data/public-ipv4 -O - -q ; echo`
echo $PUBLIC_IP 
cd /home/Angular/dist/test-ui/assests/data

echo '{ "serverURL" : "'"$PUBLIC_IP"'"}' > appConfig.json
cd /home/Angular

service nginx start