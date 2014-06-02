#!/sbin/sh
# Подчищает прошивку сразу после установки
# Положить скрипт в /system/addon.d/

# Загружаем подсобные функции
. /tmp/backuptool.functions

# Рингтон и звук уведомления, которые должны остаться в системе
RINGTONE=Machina
NOTIFICATION=Argon

case "$1" in
    backup)
	# Пусто :)
    ;;
    restore)
	# Рингтоны, уведомления и звук будильника
	cd /system/media/audio/ringtones/
	rm [!${RINGTONE}]*.ogg
	cd /system/media/audio/notifications/
	rm [!${NOTIFICATION}]*.ogg
	rm /system/media/audio/alarms/*
	# Языки синтеза и оффлан-распознавания речи
	rm /system/tts/lang_pico/*
	rm -rf /system/usr/srec/config/*
	# Приложения
	A=/system/app/
	rm $A/Email.apk
	rm $A/Exchange2.apk
	rm $A/LockClock.apk
	rm $A/PicoTts.apk
	rm $A/Term.apk
	rm $A/ThemeChooser.apk
	rm $APPS/WAPPushManager.apk
	rm $A/LiveWallpapers.apk
	rm $A/LiveWallpapersPicker.apk
	rm $A/VisualizationWallpapers.apk
	A=/system/priv-app/
	rm $A/CMUpdater.apk
	rm $A/ThemeManager.apk
    ;;
    pre-backup)
	# ...
    ;;
    post-backup)
	# ...
    ;;
    pre-restore)
	# ...
    ;;
    post-restore)
	# ...
    ;;
esac
