#!/bin/bash
set -e 

source ./colors.sh

echo -e "${azul}CONFIGURACION DE TERMIAL KITTY${NC}"

echo -e "${amarillo}[1] Copiando archivos de configuracion${NC}"

cd ../configurations/kitty

cp -r color.ini $HOME/.config/kitty
cp -r kitty.conf $HOME/.config/kitty

echo -e "${amarillo}[2] Copiando configuracion para zshrc${NC}" 

sudo rm -f $HOME/.zshrc

cp -r .zshrc $HOME/


echo -e "${amarillo}[3] Configurando zsh p10k${NC}"

git clone https://github.com/romkatv/powerlevel10k.git $HOME/powerlevel10k

rm -rf $HOME/.p10k.zsh

cp -rf .p10k.zsh $HOME/

echo -e "${morado}TERMIAL CONFIGURADA${NC}"



