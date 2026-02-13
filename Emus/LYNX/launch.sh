#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emus/LYNX
cd $RA_DIR

$EMU_DIR/cpufreq.sh

#disable netplay
NET_PARAM=

HOME=$RA_DIR $RA_DIR/ra32.trimui $NET_PARAM -L $RA_DIR/.retroarch/cores/handy_libretro.so "$*"
sync
