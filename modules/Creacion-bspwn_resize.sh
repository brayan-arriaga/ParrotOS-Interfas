#!/bin/bash
set -e

source ./colors.sh

echo -e "${azul}CRANDO ARCHIVO RESIZE${NC}"
echo -e "${amarillo}[1] Creando carpeta script${NC}"
mkdir $HOME/.config/bspwm/scripts/

echo -e "${amarillo}[2] Creando script${NC}"

touch $HOME/.config/bspwm/scripts/bspwm_resize
chmod +x $HOME/.config/bspwm/scripts/bspwm_resize

echo "# ------------------------------------------------------------------------------------------------
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
# -------------------------------------------------------------------------------------------------" >> $HOME/.config/bspwm/scripts/bspwm_resize

echo -e "${morado}CREACION FINALIZADA${NC}"

