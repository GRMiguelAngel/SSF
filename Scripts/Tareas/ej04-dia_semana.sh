#!/bin/bash
########################################################################
#
#   Autor: Miguel Ángel García Rodríguez <miguelangel2e2005@gmail.com>
#
#   Objetivo: Día de la semana. 
#
#   Entrada: Día, mes y año.
#
#   Salida: Mostrar día de la semana.
#
#   
#   Historial:
#   2024-01-09  versión 1
#   2024-01-09  versión 2: se muestra el número de argumentos, los argumentos indicados, y el usuario que los indica. 
#
########################################################################


day=$1
month=$2
year=$3 
echo "el dia de la semana de la fecha indicada ($day/$month/$year) fue $(date -d $year-$month-$day +"%A")"