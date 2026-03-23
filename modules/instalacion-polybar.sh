#!/bin/bash
set -e 

source ./colors.sh

echo -e "${azul}INSTALACION DE POLYBAR${NC}"

echo -e "${amarillo}[1] Clonando repositorios${NC}"
cd $HOME/Desktop
git clone --recursive https://github.com/polybar/polybar

echo -e "${amarillo}[2] Instalando polybar${NC}"
cd polybar/
mkdir build
cd build/
cmake ..
make -j$(nproc)
sudo make install

echo -e "${morado}PROCESO FINALIZADO${NC}"


