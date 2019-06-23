#!/bin/bash

xscreensaver-command -exit
DISPLAY=:0 chromium-browser  --remote-debugging-port=9222 --kiosk --disable-infobars  --disable-web-security --user-data-dir=tmp index.html

