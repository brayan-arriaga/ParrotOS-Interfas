#!/bin/bash
set -e 

source ./colors.sh

echo -e "${azul}INSTALACION DE SXHKD${NC}"

echo -e "${amarillo}[1] Clonando repositorio${NC}"
cd $HOME/Desktop
git clone https://github.com/baskerville/sxhkd.git

echo -e "${amarillo}[2] Instalando sxhkd${NC}"
cd sxhkd/
make
sudo make install

echo -e "${morado}Descarga finalizada${NC}"
