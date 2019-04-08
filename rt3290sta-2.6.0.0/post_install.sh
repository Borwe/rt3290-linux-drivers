#!/bin/sh

cp blacklist-ralink.conf /etc/modprobe.d/
[ ! -f /etc/Wireless/RT2860STA ] && mkdir -p /etc/Wireless/RT2860STA
cp src/RT2860STA.dat /etc/Wireless/RT2860STA
