#!/bin/sh

if [ ! -e /config/config.ini ]; then
	cp /fosspay/config.ini.example /config/config.ini
	echo "Config file written. Make it fit your install and restart the container…"
	while true; do sleep 50000; done
else
	/usr/sbin/crond
	cd /fosspay
	python3 app.py
fi

