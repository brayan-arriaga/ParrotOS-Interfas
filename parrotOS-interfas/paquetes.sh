#!/bin/bash
set -e

echo "================================"
echo " Instalando paquetes nesesarios "
echo "================================"
sleep 3

echo "[1] Herramientas basicas del sistema"
sleep 2
sudo apt install -y build-essential git vim kitty feh
sudo apt install -y rofi
echo "Herramientas instaladas"

sleep 3

echo "[2] Lribrerias principales de X11/XCB"
sleep 2
sudo apt install libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev 
echo "librerias principales instaladas"

sleep 3


echo "[3] Extennsiones de X11"
sleep 2
sudo apt install libxcb-xtest0-dev libxcb-shape0-dev libxcb-xkb-dev
echo "Extenciones instaladas"

sleep 3

echo "[4] Audio"
sudo apt install libasound2-dev 
echo "Audio instalada" 

sleep 3

echo "[5] fondos"
sleep 2
cp -r fondo $HOME/Pictures/


echo "====================================="
echo " INSTALACIONES DE PAQUETES COMPLETAS "
echo "====================================="
sleep 3


