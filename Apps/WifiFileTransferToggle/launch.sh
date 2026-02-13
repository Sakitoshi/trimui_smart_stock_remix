#!/bin/sh
DUFS_APP_CONFIG="/mnt/SDCARD/Apps/WifiFileTransferToggle/config.json"
IP="$(ip addr show wlan0 | awk '/inet[^6]/ {split($2, a, "/"); print a[1]}')"
show_message() {
  killall -9 display.elf
  /mnt/SDCARD/System/bin/display.elf -d 100 -b /usr/trimui/res/skin/background.png -f /usr/trimui/res/regular.ttf "$1"
}

if kill -0 $(pidof dufs) > /dev/null 2>&1; then
  show_message "Disabling HTTP Server"
  echo -e {\\n\
  \"label\":\"WiFi File Transfer\",\\n\
  \"icon\":\"icon.png\",\\n\
  \"launch\":\"launch.sh\",\\n\
  \"description\":\"Turned off\"\\n\
  } | sed 's/^[[:blank:]]*//' > $DUFS_APP_CONFIG
  killall dufs
else
  show_message "Enabling HTTP Server"
  nice -2 ./dufs --auth trimui:trimui@/:rw -p 80 --allow-upload --allow-delete --allow-search --allow-archive /mnt/SDCARD &
  sleep 0.5
  if [ -z "$IP" ]; then
    DUFS_STATUS="Not connected"
  else
    DUFS_STATUS="IP: $IP Usr&Pwd: trimui"
  fi
  if kill -0 $(pidof dufs) > /dev/null 2>&1; then
    echo -e {\\n\
    \"label\":\"WiFi File Transfer\",\\n\
    \"icon\":\"icon.png\",\\n\
    \"launch\":\"launch.sh\",\\n\
    \"description\":\"$DUFS_STATUS\"\\n\
    } | sed 's/^[[:blank:]]*//' > $DUFS_APP_CONFIG
  fi
fi
killall -9 display.elf