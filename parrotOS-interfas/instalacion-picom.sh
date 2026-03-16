#!/bin/bash

set -e

echo "===================================="
echo "       INSTALACION DE PICOM         "
echo "===================================="

sleep 5

echo
echo "[1] Actualizando el sistema"
sleep 2

sudo apt update -y

echo
echo "actualizacion terminada.."

sleep 4

echo "[2] Instalando los paquetes nesesarios para la instalacion"
sleep 2

sudo apt install -y  meson libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev libxcb-glx0-dev libpcre3-dev
sudo apt install -y libpcre3-dev --fix-missing

echo "Instalacion de paquetes terminada"

sleep 2

echo 
echo "[3] Clonamos y configuramos picom"
sleep 4

echo "clonando repositorio"
cd $HOME/Desktop
git clone https://github.com/ibhagwan/picom.git

echo "Descarga terminada..."

sleep 4
echo
echo "[4] Configuranndo picom"
cd picom/
git submodule update --init --recursive
meson --buildtype=release . build
ninja -C build
sudo ninja -C build install

echo
echo "========================================================"
echo "        INSTALACION Y CONFIGURACION FINALIZADA          "
echo "========================================================"


