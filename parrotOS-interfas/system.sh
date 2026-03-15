#!/bin/bash

set -e

echo "[1] Actualizando  lista de paquetes"
sleep 3

sudo apt update 

echo "Actualizacion correcta"
sleep 2 

echo "[2] Actualizando todos los paquetes instalados"
sleep 3

sudo apt full-upgrade 

echo "Actualizacion correcta"
sleep 2

echo "[3] limpando paquetes"
sudo apt remove

sleep 3 

echo "Actualizacion de sistema finalizado"

sleep 5


