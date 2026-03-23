#!/bin/bash

set -e 

source ./colors.sh

echo -e "${azul}CONFIGURANDO Y DESCARGANDO FUENTES${NC}"

echo -e "${amarillo}[1] Pasando archivos de fuentes${NC}" 
cd ../fuentes
mkdir -p ~/.local/share/fonts
sudo cp *.ttf ~/.local/share/fonts

echo -e "${amarillo}[2] Actualizando cache${NC}"
fc-cache -fv

echo -e "${morado}CONFIGURACION FINALIZADA${NC}"
