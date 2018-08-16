#!/bin/bash


#configure nginx




PUBLIC_IP=`wget http://169.254.169.254/latest/meta-data/public-ipv4 -O - -q ; echo`
echo $PUBLIC_IP 
cd /home/mahmoud/vstsagent/_work/r1/a/_FrontEnd/dist/test-ui/assets/data
sudo rm -rf appConfig.json
echo '{ "serverURL" : "'"$PUBLIC_IP"'"}' > appConfig.json
