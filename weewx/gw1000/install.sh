#!/bin/bash

WEEWX="/opt/weewx/weewxinst"
SKIN="../skin/byteweather"
DRIVER_VERSION=0.2.0

# /etc/init.d/weewx stop

cp weewx.conf ${WEEWX}
# sed -i "s/wupasswd/`cat wupasswd`/g" ${WEEWX}/weewx.conf
# sed -i "s/wowpasswd/`cat wowpasswd`/g" ${WEEWX}/weewx.conf
cp driver/${DRIVER_VERSION}/bin/user/gw1000.py ${WEEWX}/bin/user/

rm -rf ${WEEWX}/skins/byteweather
cp -rp ${SKIN} ${WEEWX}/skins/byteweather
scp -r -P 222 ${SKIN}/* bosvoe@boshut:/usr/home/bosvoe/public_html/boshut.justobjects.nl/weer

# /etc/init.d/weewx start
