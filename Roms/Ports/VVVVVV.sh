#!/bin/sh
PORT_DIR="$( cd -P -- "$(dirname "$0")" && pwd -P )/VVVVVV"
show_message() {
  killall -9 display.elf
  /mnt/SDCARD/System/bin/display.elf -d 100 -b /usr/trimui/res/skin/background.png -f /usr/trimui/res/regular.ttf "$1"
}

if [ ! -f "$PORT_DIR/data.zip" ]; then
  show_message "data.zip not found"
  sleep 3
  killall -9 display.elf
  exit 0
fi

# Menu+L/R needs to be disabled or the Menu button isn't recognized
L2R2COMBO=/sys/module/gpio_keys_polled/parameters/l2r2combokey
COMBO_STATUS=$(cat $L2R2COMBO)
echo 0 > $L2R2COMBO

cd "$PORT_DIR"
HOME="$PORT_DIR" ./vvv_sdl12
echo $COMBO_STATUS > $L2R2COMBO
