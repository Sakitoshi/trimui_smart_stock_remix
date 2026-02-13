#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emus/SGB
cd $RA_DIR

$EMU_DIR/cpufreq.sh

#disable netplay
NET_PARAM=

HOME=$RA_DIR $RA_DIR/ra32.trimui $NET_PARAM -L $RA_DIR/.retroarch/cores/mgba_libretro.so "$*"
sync

#Workaround here. mgba will crash and skip layer exit function.
#This fb recovery will move to MainUI later.
./trimui_de_fb_reset
