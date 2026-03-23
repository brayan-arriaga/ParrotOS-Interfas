#!/bin/bash

set -e 

source ./colors.sh

echo -e "${azul}CONFIGURANDO PICOM${NC}"

echo -e "${amarillo}[1] Creando carpeta para picom${NC}"
mkdir $HOME/.config/picom

echo -e "${amarillo}[2] Creando configuracion${NC}"
cp ../configurations/picom.conf $HOME/.config/picom

echo -e "${amarillo}[3] Damos permisos para el inicio de bspwn${NC}"

echo 'picom --config ~/.config/picom/picom.conf --daemon &' >> ~/.config/bspwm/bspwmrc 
echo 'bspc config border_width 0' >> ~/.config/bspwm/bspwmrc
 

echo -e "${morado}CONFIGURACION CONLCUIDA${NC}"
