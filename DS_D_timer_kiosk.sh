#!/bin/bash
for (( i=21; i>0; i--)); do
  sleep 1 &
  printf "Jangan di tutup, sedang proses update. Trims as@epic  $i \r"
  wait
done
"D:\ds_puskestni\kill_DS.exe" $1 &
git pull
"D:\ds_puskestni\DesktopService.exe" $1 &

start chrome http://transmedic.co.id:7777/kiosk
