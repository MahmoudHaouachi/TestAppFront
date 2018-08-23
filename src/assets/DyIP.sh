
PUBLIC_IP=`curl ipinfo.io/ip`
echo $PUBLIC_IP 
cd /usr/share/nginx/html/assets/data
sudo rm -rf appConfig.json
echo '{ "serverURL" : "'"$PUBLIC_IP"'"}' > appConfig.json
