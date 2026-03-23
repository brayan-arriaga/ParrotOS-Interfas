#!/bin/bash
set -e 

source ./colors.sh
echo -e "${azul}INSTALACION DE PICOM${NC}"


echo -e "${amarillo}[1] Clonando repositorio${NC}"
cd $HOME/Desktop
git clone https://github.com/ibhagwan/picom.git
cd picom/

echo -e "${amarillo}[2] Instalando picom${NC}"
git clone https://github.com/ibhagwan/picom.git
cd picom/

echo -e "${morado}PROCESO FINALIZADO${NC}"

