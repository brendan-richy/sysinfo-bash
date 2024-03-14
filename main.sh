#!/bin/bash

echo "Welcome to SysInfo, a simple way to retrieve vital information about your computer"
echo "Please Make a Selection from the following options: "

while true; do
    echo "1. CPU Info"
    echo "2. Memory Info"
    echo "3. Battery Info"
    echo "4. Screen Info"
    echo "5. Connected Devices"
    echo "Choice: "
    read choice

    case $choice in
        1)
            ./functions/sysinfo_cpu.sh
            ;;
        2)
            ./functions/sysinfo_memory.sh
            ;;
        3)
            ./functions/sysinfo_battery.sh
            ;;
        4)
            ./functions/sysinfo_screen.sh
            ;;
        5)
            ./functions/sysinfo_devices.sh
            ;;
    esac

    echo -n "Do you want to continue (Y/N)? "
    read answer
    case $answer in
        [Nn]*)
            echo "Exiting SysInfo. Goodbye!"
            exit 0
            ;;
    esac

done
