#!/bin/bash
set -e

echo "=========================================="
echo "         ACTUALIZANDO SISTEMA             "
echo "=========================================="

echo -e "\033[0;35m[1] Actualizando lista de paquetes\033[0m"
sleep 3

#sudo echo "deb https://deb.parrot.sh/parrot rolling main contrib non-free" > /etc/apt/sources.list

sudo apt update -y  && sudo parrot-upgrade -y

echo -e "\033[0;35mActualizacion de paquetes correcta\033[0m"
sleep 2

echo -e "\033[0;35m[2] Actualizando todos los paquetes instalados\033[0m"
sleep 3

sudo apt full-upgrade -y

echo -e "\033[0;35mActualizacion correcta\033[0m"
sleep 2

echo -e "\033[0;35m[3] Borrando archivos inecesarios"
sudo apt autoremove -y
sudo apt autoclean -y

sleep 3

echo "==========================================="
echo "    ACTUALIZACION DE SISTEMA FINALIZADO    "
echo "==========================================="
sleep 5

#----------------------------------------------------

#!/bin/bash

# ==========================
# CONFIGURACIÓN
# ==========================
LOG="$HOME/update_log.txt"

# ==========================
# COLORES
# ==========================
PURPLE="\033[0;35m"
GREEN="\033[0;32m"
RED="\033[0;31m"
NC="\033[0m"

# ==========================
# FUNCIONES
# ==========================
log() {
    echo -e "$1" | tee -a "$LOG"
}

error_exit() {
    log "${RED}[ERROR] $1${NC}"
    exit 1
}

# ==========================
# VALIDAR SUDO
# ==========================
if [[ $EUID -ne 0 ]]; then
   error_exit "Ejecuta este script como root (sudo)"
fi

# ==========================
# INICIO
# ==========================
log "=========================================="
log "   ACTUALIZANDO SISTEMA (PARROT OS)       "
log "=========================================="

# ==========================
# ACTUALIZAR LISTA
# ==========================
log "${PURPLE}[1] Actualizando lista de paquetes...${NC}"

apt update -y >> "$LOG" 2>&1 || error_exit "Falló apt update"

# ==========================
# ACTUALIZACIÓN COMPLETA
# ==========================
log "${PURPLE}[2] Ejecutando parrot-upgrade...${NC}"

parrot-upgrade -y >> "$LOG" 2>&1 || error_exit "Falló parrot-upgrade"

# ==========================
# LIMPIEZA
# ==========================
log "${PURPLE}[3] Limpiando sistema...${NC}"

apt autoremove -y >> "$LOG" 2>&1 || error_exit "Falló autoremove"
apt autoclean -y >> "$LOG" 2>&1 || error_exit "Falló autoclean"

# ==========================
# FINAL
# ==========================
log "${GREEN}===========================================${NC}"
log "${GREEN} ACTUALIZACIÓN COMPLETADA CORRECTAMENTE   ${NC}"
log "${GREEN}===========================================${NC}"


