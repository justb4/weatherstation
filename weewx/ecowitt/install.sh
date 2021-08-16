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
scp -r -P 222 ${SKIN}/* bosvoe@boshut:/usr/home/bosvoe/public_html/boshut.justobjects.nl/weer

# /etc/init.d/weewx start
