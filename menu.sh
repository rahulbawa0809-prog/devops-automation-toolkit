#!/bin/bash

while true
do
    echo "1 Setup Environment"
    echo "2 Backup Files"
    echo "3 Monitor System"
    echo "4 Exit"

    read -p "Enter choice: " choice

    case $choice in
        1) ./setup.sh ;;
        2) ./backup.sh ;;
        3) ./monitor.sh ;;
        4) exit ;;
        *) echo "Invalid option" ;;
    esac
done
