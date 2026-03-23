#!/bin/bash
set -e 
cd modules/
source ./colors.sh

chmod +x *

echo -e "${azul} INSTALACION DE LA PERSONALIZACION ${NC}"

./system.sh
./paquetes.sh
./instalacion-bspwn.sh
./instalacion-sxhkd.sh
./cargando-ficheros-bspwm.sh
./cargando-ficheros-sxhkd.sh
./configuracion-teclado.sh
./Creacion-bspwn_resize.sh
./instalacion-polybar.sh
./instalador-picom.sh
./configuracion-fondo.sh
./configuracion-polybar.sh
./configuracion-picom.sh
#./configuracion-fuente.sh
