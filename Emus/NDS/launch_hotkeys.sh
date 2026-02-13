#!/bin/sh
echo $0 $*
EMU_DIR=/mnt/SDCARD/Emus/NDS

killall -9 display.elf
/mnt/SDCARD/System/bin/display.elf -d 100 -b $EMU_DIR/drastic/drastic_hotkeys.png -f /usr/trimui/res/regular.ttf ""
killall -9 display.elf
sleep 5
