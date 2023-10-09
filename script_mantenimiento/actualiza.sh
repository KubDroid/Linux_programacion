#!/bin/bash

clear
setterm -background red

if [[ "$(id -u)" != "0" ]]; then
echo "ESTE SCRIPT DEBE SER EJECUTADO COMO ROOT"
sleep 3
clear
else
echo "ESTE SCRIPT SERA EJECUTADO COMO SUPERUSUARIO (ROOT)"
sleep 3
clear
fi

sudo apt update
sudo apt upgrade
sudo apt autoremove

echo "Todo bien! Hasta luego"

exit