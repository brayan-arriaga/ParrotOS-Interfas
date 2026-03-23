#!/bin/bash
set -e

source ./colors.sh

echo -e "${azul}INSTALACION DE INTERFAS${NC}"

echo -e "${amarillo}[1] Configurando paqueteria${NC}"

sudo rm -f  /etc/apt/sources.list.d/parrot.list
sudo cp ../configurations/parrot.list /etc/apt/sources.list.d/

sudo apt clean
sudo rm -rf /var/lib/apt/lists/*


echo -e "${amarillo}[2] Actualizando lista de paquetes${NC}"
sudo apt update -y 

echo -e "${amarillo}[3] Actualizando paquetes instalados${NC}"
sudo apt upgrade -y

echo -e "${amarillo}[4] Actualizando sistema completa${NC}"
sudo apt full-upgrade -y

echo -e "${amarillo}[5] Limpiando paquetes innecesarios${NC}"
sudo apt autoremove -y 
