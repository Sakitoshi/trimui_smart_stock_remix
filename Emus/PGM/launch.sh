#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emus/PGM
cd $RA_DIR

$EMU_DIR/cpufreq.sh

case "$1" in
*theglad* | *orlegend* ) 
        echo ----FBNEO
        HOME=$RA_DIR $RA_DIR/ra32.trimui $NET_PARAM -L $RA_DIR/.retroarch/cores/fbneo_libretro.so "$*"
        ;;
*)
        echo ----FBA2012
        HOME=$RA_DIR $RA_DIR/ra32.trimui $NET_PARAM -L $RA_DIR/.retroarch/cores/fbalpha2012_libretro.so "$*"
        ;;
esac
sync
