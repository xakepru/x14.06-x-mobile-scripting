#!/system/bin/sh
# Получаем список всех сторонних приложений
for i in `pm list packages -e`; do
    # Добавляем каждое из них в очередь
    bmgr backup ${i:8}
done
# Запускаем операцию бэкапа
bmgr run
