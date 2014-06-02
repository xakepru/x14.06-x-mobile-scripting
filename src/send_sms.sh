#!/system/bin/sh
am start -a android.intent.action.SENDTO -d sms:$1 --es sms_body "$2" --ez exit_on_sent true
sleep 1
input keyevent 22
sleep 1
input keyevent 66
