#!/bin/bash

set -e

echo "=================================================="
echo "  INSTALACION Y CONFIGURACION DE BSPWM Y SXHKD    "
echo "=================================================="

sleep 4

echo "[1] Descargando repositorios nesesarios"
sleep 3

cd $HOME/Desktop

echo "Descargando bspwm...."
sleep 2
git clone https://github.com/baskerville/bspwm.git

echo "Descargandno sxhkd..."
git clone https://github.com/baskerville/sxhkd.git

echo "Descargas finalizadas"

sleep 3

echo 
echo -e "[2] Instalar bspwm"

sleep 2

cd bspwm/
make
sudo make install

echo
echo -e "Instalacion completada"

sleep 3 

echo
echo -e "[3] Instalar sxhkd"

sleep 2

cd ../sxhkd/
make
sudo make install

sudo apt install bspwm

echo
echo -e "Instalacion completa"


