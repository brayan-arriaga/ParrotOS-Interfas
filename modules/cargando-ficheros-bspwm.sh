#!/bin/bash
set -e
source ./colors.sh

echo -e "${azul}CARGA DE FICHEROS DE BSPWM${NC}"

echo -e "${amarillo}[1] Creando carpeta en .config${NC}"
mkdir ~/.config/bspwm

echo -e "${amarillo}[2] Copiando paquetes nesesarios en .config${NC}"
cd $HOME/Desktop/bspwm
cp examples/bspwmrc ~/.config/bspwm/
chmod +x ~/.config/bspwm/bspwmrc

echo -e "${morado}FICHERO CARGADO${NC}"

