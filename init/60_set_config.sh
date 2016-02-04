#!/bin/bash

if [ ! -f /config/speedtest-tracking/config.py ]; then
  cp /config/speedtest-tracking/config-example.py /config/speedtest-tracking/config.py
fi

cp /config/speedtest-tracking/speedtest_cron-example /etc/cron.hourly/speedtest_cron
chmod 777 /etc/cron.hourly/speedtest_cron

chown abc:abc -R /config
