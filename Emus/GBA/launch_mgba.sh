#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emus/GBA
cd $RA_DIR

THIS_EMU=mgba
ROM_DIR="$( cd -P -- "$(dirname "$1")" && pwd -P )"
GAME_NAME="${1##*/}"
GAME_NAME="${GAME_NAME%.*}"
EMU_NAME=$(cat "${ROM_DIR}/${GAME_NAME}.emu")
if [ -z "$EMU_NAME" ] || [ "$EMU_NAME" != "$THIS_EMU" ]; then
  #EMU_NAME=${0##*/}
  #EMU_NAME=${EMU_NAME%.*}
  #EMU_NAME=${EMU_NAME:7}
  #echo $EMU_NAME > "${ROM_DIR}/${GAME_NAME}.emu"
  # this is the default emu, let's remove the file instead
  rm "${ROM_DIR}/${GAME_NAME}.emu"
fi

$EMU_DIR/cpufreq.sh

#disable netplay
NET_PARAM=

HOME=$RA_DIR $RA_DIR/ra32.trimui $NET_PARAM -L $RA_DIR/.retroarch/cores/mgba_libretro.so "$*"
sync

#Workaround here. mgba will crash and skip layer exit function.
#This fb recovery will move to MainUI later.
./trimui_de_fb_reset
