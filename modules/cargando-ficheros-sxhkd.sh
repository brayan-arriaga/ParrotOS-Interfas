#!/bin/bash
set -e 

source ./colors.sh

echo -e "${azul}CARGANDO FICHEROS DE SXHKD${NC}"
echo -e "${amarillo}[1] Creando carpeta en .config${NC}"
mkdir ~/.config/sxhkd

echo -e "${amarillo}[2] Copiando paquetes nesesarios en .config${NC}"
cd $HOME/Desktop/bspwm
cp examples/sxhkdrc ~/.config/sxhkd/

echo -e "${morado}FICHERO CARGADO${NC}"
