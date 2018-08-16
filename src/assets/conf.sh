#!/bin/bash


#configure nginx




PUBLIC_IP=`curl ipinfo.io/ip`
echo $PUBLIC_IP 
cd /home/mahmoud/vstsagent/_work/r1/a/_FrontEnd/dist/test-ui/assets/data
sudo rm -rf appConfig.json
echo '{ "serverURL" : "'"$PUBLIC_IP"'"}' > appConfig.json
