#!/bin/sh

WEEWX=/opt/weewx/weewxinst

# /etc/init.d/weewx stop

cp weewx.conf $WEEWX
# sed -i "s/wupasswd/`cat wupasswd`/g" $WEEWX/weewx.conf

rm -rf $WEEWX/skins/byteweather
cp -r byteweather $WEEWX/skins/byteweather

# /etc/init.d/weewx start
