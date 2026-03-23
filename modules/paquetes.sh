#!/bin/bash
set -e 

source ./colors.sh

echo -e "${azul} INSTALANDO PAQUETES Y DEPENDENCIAS NECESARIAS${NC}"

echo -e "${amarillo}[1] Instalando paquetes gestion de ventanas${NC}"
sudo apt install -y bspwm rofi kitty feh picom zsh

echo -e "${amarillo}[2] Instalando herramientas basicas de desarrollo${NC}"
sudo apt install -y build-essential git vim

echo -e "${amarillo}[3] Instalacion de librerias XCB (graficos/X11)${NC}"
sudo apt install -y libxcb1-dev libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libxcb-xtest0-dev libxcb-shape0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-present-dev libxcb-glx0-dev libuv1-dev

echo -e "${amarillo}[4] Instalacion de paquetes de audio${NC}"
sudo apt install -y libasound2-dev libpulse-dev --fix-missing

echo -e "${amarillo}[5] Instalacion de herramientas de compilación / build systems${NC}"
sudo apt install -y cmake cmake-data pkg-config meson --fix-missing

echo -e "${amarillo}[6] Instalacion de Python / documentacion${NC}"
sudo apt install -y python3-sphinx python3-xcbgen xcb-proto 

echo -e "${amarillo}[7] Instalacion de librerías gráficas y sistema${NC}"
sudo apt install -y libcairo2-dev libpixman-1-dev libgl1-mesa-dev libxext-dev libx11-xcb-dev libuv1-doc

echo -e "${morado}Instalacion de paquetes completa${NC}"
