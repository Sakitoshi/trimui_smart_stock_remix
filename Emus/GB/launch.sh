#!/bin/sh
echo $0 $*
EMU_DIR=/mnt/SDCARD/Emus/GB
DEF_EMU=gambatte
ROM_DIR="$( cd -P -- "$(dirname "$1")" && pwd -P )"
GAME_NAME="${1##*/}"
GAME_NAME="${GAME_NAME%.*}"
if [ -f "${ROM_DIR}/${GAME_NAME}.emu" ]; then
  EMU_NAME=$(cat "${ROM_DIR}/${GAME_NAME}.emu")
fi

cd $EMU_DIR
if [ -f launch_${EMU_NAME}.sh ]; then
  ./launch_${EMU_NAME}.sh "$*"
else
  ./launch_${DEF_EMU}.sh "$*"
fi