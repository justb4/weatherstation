#!/bin/bash

WEEWX="/opt/weewx/weewxinst"
SKIN="../skin/byteweather"

# /etc/init.d/weewx stop

cp weewx.conf ${WEEWX}
# sed -i "s/wupasswd/`cat wupasswd`/g" ${WEEWX}/weewx.conf
# sed -i "s/wowpasswd/`cat wowpasswd`/g" ${WEEWX}/weewx.conf
rm -rf ${WEEWX}/skins/byteweather
cp -rp ${SKIN} ${WEEWX}/skins/byteweather
scp -r ${SKIN}/* ftpju011@boshut:/home/f/ftpju011/Webhosting/htdocs/boshut.justobjects.nl/weer

# /etc/init.d/weewx start
