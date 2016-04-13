#!/bin/bash

while true;
do
temp=$(./readTempData.sh)
now=$(date +%d.%m.%y-%T)
cat blank.json | sed 's/T1/'$temp'/g; s/D1/'$now'/g'> \
send.json
json=$(cat send.json)
echo $json
curl -X PUT \
-H "Accept: application/json" \
-H "Content-Type: application/json" \
-d "$json" \
http://iot-api-gw.ericsson.net:3001/resources/Ericsson/ITSC/temperature
sleep 10
done
