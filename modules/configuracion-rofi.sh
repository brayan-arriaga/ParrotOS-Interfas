#!/bin/bash
set -e 

source ./colors.sh

echo -e "${azul}CONFIGURACION DE TEMAS DE ROFI${NC}"

echo -e "${amarillo}[1] Copiando configuracion de temas${NC}"

mkdir -p $HOME/.config/rofi/themes
cp $HOME/Desktop/blue-sky/nord.rasi $HOME/.config/rofi/themes

echo -e "${morado}CONFIGURACION DE TEMAS TERMINADO${NC}"
