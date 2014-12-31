#!/bin/sh

WEEWX=/opt/weewx/weewxinst

# /etc/init.d/weewx stop

cp weewx.conf $WEEWX
sed -i "s/wupasswd/`cat wupasswd`/g" $WEEWX/weewx.conf
rm -rf $WEEWX/skins/byteweather
cp -r byteweather $WEEWX/skins/byteweather
scp -r byteweather/* ftpju011@boshut:/home/f/ftpju011/Webhosting/htdocs/boshut.justobjects.nl/weer

# /etc/init.d/weewx start
