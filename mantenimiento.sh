#!/bin/bash
echo "========================================"
echo "Iniciando mantenimiento del servidor..."
echo "========================================"

# 1. Actualizar la lista de repositorios
sudo apt update

# 2. Instalar las actualizaciones sin preguntar (la bandera -y es para decir 'yes' automáticamente)
sudo apt upgrade -y

# 3. Limpiar paquetes huérfanos y basura
sudo apt autoremove -y

echo "========================================"
echo "¡Mantenimiento completado con éxito!"
echo "========================================"
