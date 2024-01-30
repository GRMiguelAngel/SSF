#!/bin/bash

##########################################
# Nombre: muestra datos
# Autor: Germán Adolfo Ojeda Padrón
#
# Objetivo: Mostrar datos obtenidos por teclado
#
# Entradas: Ninugna, se piden por teclado
# Salidas: Mensaje
#
# Versión: 2024-01-15
##########################################

sleep 15

read -p "Indique su nombre: " nombre
read -p "Indique su apellido: " apellido
read -p "Indique su usuario: " usuario

echo "Bienvenido, $nombre"
echo "Sus datos son $nombre, $apellido"
echo "Vamos a crear tu usuario $usuario"
echo "Tu nueva ID es $RANDOM"
