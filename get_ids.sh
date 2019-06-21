#!/bin/bash

EXTS=`grep -Eo 'phone-[^"]+' cl-map.svg | sed -e 's/^phone-2//'`

CMDS="Action: Login
Username: paul
Secret: `cat password`

"

CMDS+=`echo "$EXTS" | sed 's/.*/Action: DBGet\nFamily: ext\nKey: \0\n/'`

# echo "$CMDS"

IDS_TO_EXTS=`(tail -n 10000  -f  <(echo "$CMDS") | timeout 2 telnet 192.168.179.2 5038) | sed  -E '/Key.*/{N;s/Key: (.*)\nVal: (.*)/"\2":"2\1",/;/Key:/!P};d'`

echo "ids_to_exts={$IDS_TO_EXTS};" | tee ids_to_exts.js
