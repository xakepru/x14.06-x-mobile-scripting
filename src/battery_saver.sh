#!/system/bin/sh
while true; do
    if [ `cat /sys/class/power_supply/battery/capacity` -lt 30 ]; then
	svc wifi disable
	service call bluetooth_manager 8
    fi
    sleep 600
done
