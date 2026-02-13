#!/bin/sh
cd $(dirname "$0")
export LD_LIBRARY_PATH=$(dirname "$0")/lib:$LD_LIBRARY_PATH
dbPath="/mnt/SDCARD/Roms/"
show_message() {
  killall -9 display.elf
  /mnt/SDCARD/System/bin/display.elf -d 100 -b /usr/trimui/res/skin/background.png -f /usr/trimui/res/regular.ttf "$1"
}

show_message "Cleaning rom names..."
echo "Cleaning rom names..."
for dbFile in $(find $dbPath -type f -name '*_cache7.db')
do
  tableName=$(basename "$dbFile")
  tableNameLen=$((${#tableName} - 10))
  tableName=${tableName:0:$tableNameLen}_roms
  tableData=$(./sqlite3 "$dbFile" "SELECT * FROM $tableName;" | \
  tr '\n' ';' | \
  sed "s/\b'[^']\b/'&/g" | \
  sed -r "s/^|$/'/g")
  IFS="|"
  count=1
  num=2
  tableTMP=""
  for i in $tableData
  do
    if [ $count -eq $num ]
    then
      tableTMP="$tableTMP','$(echo $i | \
      sed -r 's/( ?(\(|\[).*(\)|\]))//g' | \
      sed "s/_$//" | \
      tr '_' ' ')"
      num=$(( num+8 ))
    else
      tableTMP="$tableTMP','$i"
    fi
    count=$(( count+1 ))
  done
  tableData=$(echo "(${tableTMP:3}" | tr -d '\r' | sed "s/;/'),('/g")
  tableData=${tableData%????}\)
  query="REPLACE INTO $tableName VALUES $tableData;"
  if ./sqlite3 "$dbFile" "$query"
  then
    echo $dbFile processed succesfully
  else
    echo $dbFile failed
  fi
done
sync
killall -9 display.elf
exit 0
