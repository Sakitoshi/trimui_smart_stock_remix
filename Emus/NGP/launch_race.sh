#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emus/NGP
cd $RA_DIR

THIS_EMU=race
ROM_DIR="$( cd -P -- "$(dirname "$1")" && pwd -P )"
GAME_NAME="${1##*/}"
GAME_NAME="${GAME_NAME%.*}"
EMU_NAME=$(cat "${ROM_DIR}/${GAME_NAME}.emu")
if [ -z "$EMU_NAME" ] || [ "$EMU_NAME" != "$THIS_EMU" ]; then
  EMU_NAME=${0##*/}
  EMU_NAME=${EMU_NAME%.*}
  EMU_NAME=${EMU_NAME:7}
  echo $EMU_NAME > "${ROM_DIR}/${GAME_NAME}.emu"
fi

$EMU_DIR/cpufreq.sh

#disable netplay
NET_PARAM=

HOME=$RA_DIR $RA_DIR/retroarch -v $NET_PARAM -L $RA_DIR/.retroarch/cores/race_libretro.so "$*"
sync
