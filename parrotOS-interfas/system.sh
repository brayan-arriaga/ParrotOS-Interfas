#!/bin/bash

set -e

echo "=========================================="
echo "         ACTUALIZANDO SISTEMA             "
echo "=========================================="

echo "[1] Actualizando  lista de paquetes"
sleep 3

sudo apt update && sudo parrot-upgrade

echo "Actualizacion correcta"
sleep 2 

echo "[2] Actualizando todos los paquetes instalados"
sleep 3

sudo apt full-upgrade -y

echo "Actualizacion correcta"
sleep 2

echo "Limpando paquetes"
sudo apt autoremove -y
sudo apt autoclean

sleep 3 

echo "==========================================="
echo "    ACTUALIZACION DE SISTEMA FINALIZADO    "
echo "==========================================="
sleep 5



