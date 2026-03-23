#!/bin/bash

set -e 

source ./colors.sh

echo -e "${azul}CONFIGURANDO LA POLYBAR${NC}"

echo -e "${amarillo}[1] Copiando repositorio blue-sky${NC}"
cd $HOME/Desktop
git clone https://github.com/VaughnValle/blue-sky.git

echo -e "${amarillo}[2] Instalando configuracion${NC}"

if [ ! -d "$HOME/.config/polybar" ]; then
    mkdir -p "$HOME/.config/polybar"
else
    echo "Carpeta ~/.config/polybar ya existe, omitiendo creación"
fi

cd ../configurations/polybar/
cp * -r $HOME/.config/polybar
echo "$HOME/.config/polybar/./launch.sh" >> $HOME/.config/bspwm/bspwmrc 
echo "bspc config focus_follows_pointer true" >> $HOME/.config/bspwm/bspwmrc 

cd fonts
sudo cp * /usr/share/fonts/truetype/
fc-cache -v

echo -e "${morado}CONFIGURACION FINALIZADA${NC}"

