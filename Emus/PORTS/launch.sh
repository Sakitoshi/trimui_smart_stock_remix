#!/bin/sh
echo $0 $*
EMU_DIR=/mnt/SDCARD/Emus/PORTS

$EMU_DIR/cpufreq.sh

"$*"
sync
