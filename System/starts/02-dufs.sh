#!/bin/sh
DUFS_APP_CONFIG="/mnt/SDCARD/Apps/WifiFileTransferToggle/config.json"

killall dufs
while IFS= read -r READ_JSON || [[ -n "$READ_JSON" ]]; do
  if echo $READ_JSON | grep description | grep -e "IP" -e "Not connected"; then
    WRITE_JSON="true"
    break
  else
    WRITE_JSON="false"
  fi
done < $DUFS_APP_CONFIG
if [[ "$WRITE_JSON" = "true" ]]; then
  echo -e {\\n\
  \"label\":\"WiFi File Transfer\",\\n\
  \"icon\":\"icon.png\",\\n\
  \"launch\":\"launch.sh\",\\n\
  \"description\":\"Turned off\"\\n\
  } | sed 's/^[[:blank:]]*//' > $DUFS_APP_CONFIG
fi
exit 0
