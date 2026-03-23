#!/bin/bash
set -e 

source ./colors.sh

echo -e "${azul}CONFIGURANDO FONDO${NC}"
echo -e "${amarillo}[1] Copiando fondos de pantalla a pictures${NC}"

cd ..
cp -r fondos/ $HOME/Pictures

echo -e "${amarillo}[2] configurando el fondo en bspwmrc${NC}"
echo "feh --bg-fill $HOME/Pictures/fondos/fondo.jpg" >> $HOME/.config/bspwm/bspwmrc 

echo -e "${morado}CONFIGURACION FINALIZADA${NC}"

