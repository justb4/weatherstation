#! /bin/sh
# Author: Just van den Broecke <justb4@gmail.com>
# Restart weewx if not running.
#

WEEWX_HOME=/opt/weewx/weewxinst
WEEWX_BIN=$WEEWX_HOME/bin/weewxd

# Irrecoverable (USB) error: reboot
if tail -10 /var/log/syslog | grep -q 'of 5 to get LOOP data'; then
    echo "REBOOT after weewxfail"  >> /var/log/weewxcheck.log
    shutdown -r now
fi

NPROC=`ps ax | grep $WEEWX_BIN | grep $NAME.pid | wc -l`
if [ $NPROC -gt 1 ]; then
    echo "weewx running multiple times on `date`! Attempting restart." >> /var/log/weewxcheck.log
    /etc/init.d/weewx restart
elif [ $NPROC = 1 ]; then
    echo "Weewx is ok: $status"
else
    echo "weewx not running on `date`! Attempting restart." >> /var/log/weewxcheck.log
    /etc/init.d/weewx restart
fi

