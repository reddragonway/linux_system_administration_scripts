# linux_system_administration_scripts
Скрипты для системного администрирования Linux-систем:
1. <b>update_system.sh</b><br>
Комманда для терминала, позволяющая полностью обновить систему и удалить оставшийся мусор. 
2. <b>system_info.sh</b><br>
Показывает информацию о системе (ОС, релиз, ядро).
3. <b>message_of_the_cow.sh</b><br>
Выводит шуточное "сообщение дня" от коровы. Для успешной работы скрипта необходимо сначала установить: cowsay, fortune, fortunes-ru
4. <b>your_public_ip.sh</b><br>
Выводит публичный ip-адрес хоста. Для успешной работы скрипта необходимо сначала установить: curl
5. <b>custom_motd.sh</b><br>
Можно использовать как motd — message of the day, сообщение отображаемое при входе в Linux-систему. Для успешной работы скрипта необходимо сначала установить: figlet, screenfetch, inxi
5. <b>dos2unix_all.sh</b><br>
Находит все файлы в папке files_to_convert (рекурсивно) и конвертирует их в "unix" формат. Для успешной работы скрипта необходимо сначала установить: dos2unix
6. <b>take_screenshot.sh</b><br>
Делает скриншот и отправляет его на электронную почту. Для успешной работы скрипта необходимо сначала установить: ssmtp(обязательно настроить), mpack и scrot
7. <b>VirtualOS_on_AstraLinux1.6</b><br>
Набор скриптов для разворачивания виртуальной ОС (н-р, Windows) на Astra Linux 1.6 <br>
Для успешной работы скрипта, необходимо: поднять сервер  c репозиторием в локальной сети и прописать его в файле sources.list; также необходимо в рабочую папку (в скрипте это каталог /home/user/AstraLinux_1.6) скачать deb-пакеты VirtualBox. <br>
wget https://download.virtualbox.org/virtualbox/6.1.16/virtualbox-6.1_6.1.16-140961~Debian~stretch_amd64.deb <br>
wget https://download.virtualbox.org/virtualbox/6.1.16/Oracle_VM_VirtualBox_Extension_Pack-6.1.16.vbox-extpack <br>
Между запуском скриптов first.sh и second.sh можно импортировать образ гостевой ОС в VirtualBox <br>
Для автозапуска гостевой ОС при старте системы нужно: Панель управления - Система - Автозапуск - Редактировать - Добавить приложение <br>
В поле команда вводим: VBoxManage startvm "Win7" , где Win7 - это название виртуальной машины (можно посмотреть с помощью: VBoxManage list vms) <br>
Добавляем имя и иконку, для более быстрой идентификации (опционально). <br>
В результате гостевая ОС должна стартовать автоматически при запуске компьютера с Astra Linux 1.6 в качестве основной ОС. <br>
*Примечание: скрипт first.sh также устанавливает ssh и пользователя для управления через ansible-сервер (можно отключить если не нужно)
