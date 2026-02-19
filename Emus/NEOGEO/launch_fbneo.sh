#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emus/NEOGEO
cd $RA_DIR

THIS_EMU=${0##*/}
THIS_EMU=${THIS_EMU%.*}
THIS_EMU=${THIS_EMU:7}
ROM_DIR="$( cd -P -- "$(dirname "$1")" && pwd -P )"
GAME_NAME="${1##*/}"
GAME_NAME="${GAME_NAME%.*}"
EMU_NAME=$(cat "${ROM_DIR}/${GAME_NAME}.emu")
if [ -z "$EMU_NAME" ] || [ "$EMU_NAME" != "$THIS_EMU" ]; then
  #echo $EMU_NAME > "${ROM_DIR}/${GAME_NAME}.emu"
  # this is the default emu, let's remove the file instead
  rm "${ROM_DIR}/${GAME_NAME}.emu"
fi

$EMU_DIR/cpufreq.sh

HOME=$RA_DIR $RA_DIR/ra32.trimui $NET_PARAM -L $RA_DIR/.retroarch/cores/fbneo_libretro.so "$*"
sync
