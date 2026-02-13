#!/bin/sh
echo $0 $*
EMU_DIR=/mnt/SDCARD/Emus/NDS
export LD_LIBRARY_PATH=$EMU_DIR/drastic/lib:$LD_LIBRARY_PATH

$EMU_DIR/cpufreq.sh

sv=$(cat /proc/sys/vm/swappiness)
com=$(cat /sys/module/gpio_keys_polled/parameters/l2r2combokey)

echo 10 > /proc/sys/vm/swappiness
echo 0 > /sys/module/gpio_keys_polled/parameters/l2r2combokey

export SDL_VIDEODRIVER=NDS
export NDS_DEBUG_LEVEL=ERROR

cd $EMU_DIR/drastic
HOME=$EMU_DIR/drastic ./lib/ld-linux-armhf.so.3 --library-path lib ./drastic "$*"
sync

echo $sv > /proc/sys/vm/swappiness
echo $com > /sys/module/gpio_keys_polled/parameters/l2r2combokey
