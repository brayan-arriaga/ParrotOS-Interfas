#!/bin/bash

echo
echo "=================================="
echo " CARGAR BSPWN Y SXHKD EN FICHEROS "
echo "=================================="
echo

sleep 4

echo -e "[1] Creando carpetas para el bspwn y sxhkd"
sleep 2

mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd

echo   "carpetas creadas"
echo

echo "[2] Cargando ficheros nesesarios"
sleep 3

echo "Cargando fichero bspwn"
cd $HOME/Desktop/bspwm
cp examples/bspwmrc ~/.config/bspwm/
chmod +x ~/.config/bspwm/bspwmrc 

echo "Finalizo el bspwn"

sleep 3

echo
echo "Cargando ficherro sxhkd"
sleep 2

cp examples/sxhkdrc ~/.config/sxhkd/


echo "========================================="
echo "       CARGA DE FICHEROS CONCLUIDA       "
echo "========================================="

sleep 4

