#!/usr/bin/bash

scp alarm@thachpi:/home/alarm/failed_ips.txt .

python3 pygeoipmap.py -i failed_ips.txt --service m --db safety_net/GeoLite2-City_20220729/GeoLite2-City.mmdb
