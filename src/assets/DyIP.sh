
PUBLIC_IP=`curl ipinfo.io/ip`
echo $PUBLIC_IP 
cd /app/TestAppFront/dist/test-ui/assets/data
rm -rf appConfig.json
echo '{ "serverURL" : "'"$PUBLIC_IP"'"}' > appConfig.json
