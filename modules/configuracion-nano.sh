#!/bin/bash

source ./colors.sh

echo -e "${azul}CONFIGURACION DE NANO${NC}"

echo -e "${amarillo}[1] Cambiando configuracion de nano${NC}"

rm  -f $HOME/.nanorc

echo -e "${amarillo}[2] Cargando configuracion de nano${NC}"

cd ../configurations/
cp .nanorc $HOME/

echo -e "${morado}PROCESO FINALIZADO${NC}"
