#!/system/bin/sh
echo "2048,3072,6144,15360,17920,20480" > /sys/module/lowmemorykiller/parameters/minfree
