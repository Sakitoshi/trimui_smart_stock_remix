#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emus/EASYRPG
cd $RA_DIR

$EMU_DIR/cpufreq.sh

#disable netplay
NET_PARAM=

ROM_DIR="$( cd -P -- "$(dirname "$1")" && pwd -P )"
RPG_RT="$(cat "$1")"
HOME=$RA_DIR $RA_DIR/ra32.trimui $NET_PARAM -L $RA_DIR/.retroarch/cores/easyrpg_libretro.so "$ROM_DIR/$RPG_RT"
sync
