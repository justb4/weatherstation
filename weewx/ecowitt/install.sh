#!/bin/bash

WEEWX="/opt/weewx/weewxinst"
SKIN="../skin/byteweather"
DRIVER_VERSION="200812"

# /etc/init.d/weewx stop

cp driver/${DRIVER_VERSION}/ecowitt.py ${WEEWX}/bin/user/
cp weewx.conf ${WEEWX}/
# sed -i "s/wupasswd/`cat wupasswd`/g" ${WEEWX}/weewx.conf
# sed -i "s/wowpasswd/`cat wowpasswd`/g" ${WEEWX}/weewx.conf
rm -rf ${WEEWX}/skins/byteweather
cp -rp ${SKIN} ${WEEWX}/skins/byteweather
scp -r ${SKIN}/* ftpju011@boshut:/home/f/ftpju011/Webhosting/htdocs/boshut.justobjects.nl/weer

# /etc/init.d/weewx start
