#!/bin/bash

set -e

echo "================================="
echo "  CREAMOS ARCHIVO BSPWM-RESIZE   "
echo "================================="

echo

sleep 4 

echo "[1] Crando carpeta script"
sleep 2 

mkdir ~/.config/bspwm/scripts/

echo "carpeta creada"
sleep 2

echo "[2] Creando archivos requeridos"
sleep 4

touch ~/.config/bspwm/scripts/bspwm_resize; chmod +x ~/.config/bspwm/scripts/bspwm_resize

echo "
# ------------------------------------------------------------------------------------------------
#!/usr/bin/env dash

if bspc query -N -n focused.floating > /dev/null; then
	step=20
else
	step=100
fi

case "$1" in
	west) dir=right; falldir=left; x="-$step"; y=0;;
	east) dir=right; falldir=left; x="$step"; y=0;;
	north) dir=top; falldir=bottom; x=0; y="-$step";;
	south) dir=top; falldir=bottom; x=0; y="$step";;
esac

bspc node -z "$dir" "$x" "$y" || bspc node -z "$falldir" "$x" "$y"
# -------------------------------------------------------------------------------------------------" > $HOME/.config/bspwm/scripts/bspwm_resize


echo "========================================="
echo "  CONFIGURACION DE ARCHIVO FINALIZADA    "
echo "========================================="

sleep 4


