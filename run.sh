#!/bin/bash

cd `dirname "$0"`

sleep 30

python3 -m http.server 8082  &

DISPLAY=:0 xscreensaver-command -exit
DISPLAY=:0 xset s off
DISPLAY=:0 xset -dpms
while true
do
	DISPLAY=:0 timeout -k30 2h chromium-browser --remote-debugging-port=9222 --kiosk --disable-infobars  --disable-web-security --user-data-dir=tmp http://localhost:8082/index.html
done
