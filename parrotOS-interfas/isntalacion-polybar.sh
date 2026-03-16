#!/bin/bash

set -e

echo "================================================="
echo "   INSTALACION Y CONFIGURACION PARA LA POLYBAR   "
echo "================================================="

sleep 4

echo 
echo "[1] Instalando herramientas de compilacion"

sudo apt install -y cmake cmake-data pkg-config
 
echo "Instalacion herramientas finalizadas.."
echo

sleep 2

echo "[2] Instalacion de python / documentacion"
sudo apt install -y python3-sphinx python3-xcbgen xcb-proto
echo "Instalacion finalizada..."
sleep 4

echo "[3] Instalando Librerias XCB"
sudo apt install -y libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libuv1-dev
echo "Instalacion de librerias finalizado"

sleep 3

echo "[4] Instalando controladores de audio"
sleep 2
sudo apt install -y libasound2-dev libpulse-dev
sudo apt install -y libcairo2-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev

echo "Instalacion finalizada"

sleep 4

echo 
echo "[5] Instalacion de la polybar"
echo 
sleep 3
cd $HOME/Desktop

echo "clonando direcotrio git"

git clone --recursive https://github.com/polybar/polybar
cd polybar/
echo "configurando polybar"
sleep 4

mkdir build
cd build/
cmake ..
make -j$(nproc)
sudo make install

echo "=============================================="
echo "    INSTALACION Y CONFIGURACION TERMIANDA     "
echo "=============================================="
