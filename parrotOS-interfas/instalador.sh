#!/bin/bash

set -e 

echo "INICIANDO CONFIGURACION"

chmod +x /*

./system.sh
./paquetes.sh
./bspnw-sxhkd.sh
./cargar-bspnw-sxhkd.sh
./configurar-sxhkd.sh
./archivo-bspnw-resize.sh
./isntalacion-polybar.sh
./instalacion-picom.sh
./configuracion-fondo.sh
