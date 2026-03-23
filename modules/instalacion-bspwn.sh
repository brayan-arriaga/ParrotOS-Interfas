#!/bin/bash

set -e 

source ./colors.sh

echo -e "${azul}INSTALACION DE BSPWM${NC}"

echo -e "${amarillo}[1] clonando repositorio${NC}"
cd ~/Desktop
git clone https://github.com/baskerville/bspwm.git
cd bspwm/

echo -e "${amarillo}[2] Instalando bspwm${NC}"
make
sudo make install
sudo apt install bspwm

echo -e "${morado}INSTALACION FINALIZADA${NC}"

