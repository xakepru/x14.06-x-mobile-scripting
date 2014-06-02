#!/system/bin/sh

for i in /sdcard/backup/*; do
    pm install -t -r $i
done
