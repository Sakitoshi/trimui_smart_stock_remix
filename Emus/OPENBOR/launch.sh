#!/bin/sh
echo $0 $*
progdir=$(dirname "$0")
cd $progdir
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$progdir/Lib

$EMU_DIR/cpufreq.sh

./OpenBOR.trimui "$*"
sync
