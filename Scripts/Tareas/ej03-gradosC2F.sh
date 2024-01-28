#!/bin/bash
########################################################################
#
#   Autor: Miguel Ángel García Rodríguez <miguelangel2e2005@gmail.com>
#
#   Objetivo: De Celsius a Fahrenheit. 
#
#   Entrada: Números
#
#   Salida: Mostrar conversión.
#
#   Historial:
#   2024-01-09  versión 1
#   2024-01-09  versión 2: Se incluyen condicionales.
#
########################################################################
ndec=$2

if [ $# -eq 0 ] ; then
    echo "ERROR: Debe indicar dos argumentos."
    echo "SINTAXIS: $0 <Grados Fahrenheit> <Grados Celcius>"
    exit

elif [ $# -eq 1 ] ; then
    echo "Has indicado $# argumentos. Como no ha indicado el número de decimales por defecto serán dos."
    ndec=2
fi
fahrenheit=$(echo "scale=$ndec; (($1 * 9/5 + 32))" | bc)
echo "$1ºC son $fahrenheitºf"
