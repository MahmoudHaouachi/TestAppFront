#!/bin/bash
sudo su 

#configure nginx
sudo rm -rf /etc/nginx/nginx.conf
sudo mv /home/Angular/nginx.conf /etc/nginx/
#restart nginx
sudo service nginx restart

PUBLIC_IP=`wget http://169.254.169.254/latest/meta-data/public-ipv4 -O - -q ; echo`
echo $PUBLIC_IP 
cd /home/Angular/dist/test-ui/assets/data
rm -rf appConfig.json
echo '{ "serverURL" : "'"$PUBLIC_IP"'"}' > appConfig.json
cd /home/Angular


