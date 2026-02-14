#!/bin/sh
IMGS_DIR=/mnt/SDCARD/Imgs
ROMS_DIR=/mnt/SDCARD/Roms

cd $IMGS_DIR
find . -type f -name .gitkeep -delete
cd $ROMS_DIR
find . -type f -name .gitkeep -delete
exit 0
