#!/bin/sh
show_message() {
  killall -9 display.elf
  /mnt/SDCARD/System/bin/display.elf -d 100 -b /usr/trimui/res/skin/background.png -f /usr/trimui/res/regular.ttf "$1"
}
sync
show_message "Rebooting now"
reboot
