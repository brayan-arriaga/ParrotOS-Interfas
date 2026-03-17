#!/bin/bash
set -e

echo "=========================================="
echo "         ACTUALIZANDO SISTEMA             "
echo "=========================================="

echo -e "\033[0;35m[1] Actualizando lista de paquetes\033[0m"
sleep 3

#sudo echo "deb https://deb.parrot.sh/parrot rolling main contrib non-free" > /etc/apt/sources.list

sudo apt update -y  && sudo parrot-upgrade -y

echo -e "\033[0;35mActualizacion de paquetes correcta\033[0m"
sleep 2

echo -e "\033[0;35m[2] Actualizando todos los paquetes instalados\033[0m"
sleep 3

sudo apt full-upgrade -y

echo "\033[0;35mActualizacion correcta\033[0m"
sleep 2

echo -e "\033[0;35m[3] Borrando archivos inecesarios"
sudo apt autoremove -y
sudo apt autoclean -y

sleep 3

echo "==========================================="
echo "    ACTUALIZACION DE SISTEMA FINALIZADO    "
echo "==========================================="
sleep 5




