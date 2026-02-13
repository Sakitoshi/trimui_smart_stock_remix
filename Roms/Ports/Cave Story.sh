#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emus/Ports
# need this long command to get a clean parent directory path
PORT_DIR="$( cd -P -- "$(dirname "$0")" && pwd -P )/cave_story"
cd $RA_DIR/

$EMU_DIR/cpufreq.sh

#disable netplay
NET_PARAM=

HOME=$RA_DIR/ $RA_DIR/ra32.trimui $NET_PARAM -L $RA_DIR/.retroarch/cores/nxengine_libretro.so "$PORT_DIR/Doukutsu.exe"
