#!/bin/bash

if [ ! -f /config/speedtest-tracking/config.py ]; then
  cp /config/speedtest-tracking/config-example.py /config/speedtest-tracking/config.py
fi


if [ ! -f /config/speedtest-tracking/speedtest_cron ]; then
  cp /config/speedtest-tracking/speedtest_cron-example /config/speedtest-tracking/speedtest_cron
  cp /config/speedtest-tracking/speedtest_cron /etc/cron.hourly/speedtest_cron
fi

chmod 777 /etc/cron.hourly/speedtest_cron
chown abc:abc -R /config
