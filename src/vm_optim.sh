#!/system/bin/sh
echo "4096" > /proc/sys/vm/min_free_kbytes
echo "0" > /proc/sys/vm/oom_kill_allocating_task;
echo "0" > /proc/sys/vm/panic_on_oom;
echo "0" > /proc/sys/vm/laptop_mode;
echo "0" > /proc/sys/vm/swappiness
echo "50" > /proc/sys/vm/vfs_cache_pressure
echo "90" > /proc/sys/vm/dirty_ratio
echo "70" > /proc/sys/vm/dirty_background_ratio

