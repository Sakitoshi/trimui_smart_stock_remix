#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emus/PS
ROMS_DIR=$(cd -P -- "$(dirname "$1")" && pwd -P)
cd $RA_DIR

$EMU_DIR/cpufreq.sh

#disable netplay
NET_PARAM=

RA_CFG=$EMU_DIR/Memcard/memcard.cfg
GAME_NAME="${1##*/}"
GAME_NAME="${GAME_NAME%.*}"
cp "$EMU_DIR/Memcard/bios.state.101" "$ROMS_DIR/$GAME_NAME.state.auto"
HOME=$RA_DIR $RA_DIR/ra32.trimui $NET_PARAM -L $RA_DIR/.retroarch/cores/pcsx_rearmed_libretro.so --appendconfig=$RA_CFG "$*"
sync
rm "$ROMS_DIR/$GAME_NAME.state.auto"
