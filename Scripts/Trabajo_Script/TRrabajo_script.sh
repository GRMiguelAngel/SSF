#!/bin/bash
################################################################
#
#   Autores: Jesús Lugo y Miguel Angel
#   
#   Objetivo: crear un script de gestión de software simple.
#
#   Entradas: un paquete de software como argumento.
#   Salidas: dependiente de las elecciones del usuario.
#
#   Versión: 01
#   Fecha: 07-02-2024
#
################################################################

clear
package=$1

while [ -z "$package" ]; do
    echo "ERROR: Debe ingresar el nombre de un paquete de software."
    read -p "Ingrese el nombre del paquete --> " package
done

sudo apt-get update

if [ -e "$package" ]; then
    apt-cache search $package
    read -p "¿Quiere instalar este programa? " answer
    case "$answer" in

        Yes|yes|YES|Sí|SI|Si|si|1) apt-get isntall $package
        ;;

        No|NO|no|0)

# 1. Si package no está instalado:
#   a.  Si package SÍ existe: mostrar información y dar la opción de instalar.
#   b.  Si package NO existe: se le indicará al usuario que no hay ningún paquete que se llame como ha indicado, 
#       y se le mostrará el resultado de la búsqueda que se obtiene con el argumento que ha dado el usuario (puede que la búsqueda no dé ningún paquete, 
#       o puede que la búsqueda muestre paquetes que se llaman de forma similar. En cualquier caso, se mostrará el resultado).

# 2. Si package está instalado, mostrar un menú de:
#    - Mostrar su versión
#    - Reinstalarlo
#    - Actualizarlo (solo este paquete, si fuera actualizable)
#    - Eliminarlo (guardando la configuración)
#    - Eliminarlo totalmente