#!/bin/bash

echo "====================================="
echo "   CONFIGURANDO FONDO DE PANTALLA    "
echo "====================================="

echo "[1] configurando fondo de pantalla"
sleep 3

echo "feh --bg-fill $HOME/Picture/fondo/space.jpg" >> $HOME/.config/bspwm/bspwmrc

feh --bg-fill $HOME/fondo/espace.jpg 

echo "Configuracion de fondo terminada...."



