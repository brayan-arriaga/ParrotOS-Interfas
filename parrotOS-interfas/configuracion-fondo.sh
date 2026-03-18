#!/bin/bash

echo "====================================="
echo "   CONFIGURANDO FONDO DE PANTALLA    "
echo "====================================="

echo "[1] configurando fondo de pantalla"
sleep 3

echo "feh --bg-fill $HOME/Pictures/fondo/diseno-de-paisaje-del-espacio_3840x2160_xtrafondos.com.jpg &" >> $HOME/.config/bspwm/bspwmrc

feh --bg-fill $HOME/Pictures/fondo/diseno-de-paisaje-del-espacio_3840x2160_xtrafondos.com.jpg 

echo "Configuracion de fondo terminada...."
