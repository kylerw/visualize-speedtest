#!/bin/bash
mkdir -p /config/{speedtest-tracking,speedtest-cli}

[[ ! -d /config/speedtest-tracking/.git ]] && git clone https://github.com/kylerw/speedtest-tracking.git /config/speedtest-tracking 
[[ ! -d /config/speedtest-cli/.git ]] && git clone https://github.com/sivel/speedtest-cli.git /config/speedtest-cli

chown -R abc:abc /config
chmod -v -R +wx /config/*

# opt out for autoupdates
[ "$ADVANCED_DISABLEUPDATES" ] && exit 0

cd /config/speedtest-tracking
git pull

cd /config/speedtest-cli
git pull

chown -R abc:abc /config
chmod -v -R +wx /config/*
