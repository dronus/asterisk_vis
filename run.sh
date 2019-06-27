#!/bin/bash

cd `dirname "$0"`

sleep 30

DISPLAY=:0 xscreensaver-command -exit
DISPLAY=:0 xset s off
DISPLAY=:0 xset -dpms
DISPLAY=:0 chromium-browser  --remote-debugging-port=9222 --kiosk --disable-infobars  --disable-web-security --user-data-dir=tmp --incognito index.html

