#!/usr/bin/env bash

updater=/userdata/system/switch/extra/appimage_updater.sh
rm "$updater" 2>/dev/null 
wget -q --no-check-certificate --no-cache --no-cookies -O "$updater" "https://raw.githubusercontent.com/foclabroc/New-batocera-switch/refs/heads/main/system/switch/extra/appimage_updater.sh"
dos2unix "$updater"
chmod a+x "$updater"
DISPLAY=:0.0
xterm -fullscreen -hold -bg black -fa "DejaVuSansMono" -fs 12 -en UTF-8 -e "bash /userdata/system/switch/extra/appimage_updater.sh"
