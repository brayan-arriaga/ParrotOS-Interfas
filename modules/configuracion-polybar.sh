#!/bin/bash

set -e 

source ./colors.sh

echo -e "${azul}CONFIGURANDO LA POLYBAR${NC}"
echo -e "${amarillo}[1] Copiando repositorio blue-sky${NC}"

rm -rf $HOME/Desktop/blue-sky
git clone https://github.com/VaughnValle/blue-sky.git $HOME/Desktop/blue-sky


echo -e "${amarillo}[2] Instalando configuracion${NC}"

rm -rf $HOME/.config/polybar

mkdir $HOME/.config/polybar

cd ../configurations/polybar/

cp * -r $HOME/.config/polybar
chmod +x $HOME/.config/polybar/launch.sh
echo "$HOME/.config/polybar/./launch.sh" >> $HOME/.config/bspwm/bspwmrc 
echo "bspc config focus_follows_pointer true" >> $HOME/.config/bspwm/bspwmrc 

cd fonts
sudo cp * /usr/share/fonts/truetype/
fc-cache -v

echo -e "${morado}CONFIGURACION FINALIZADA${NC}"

