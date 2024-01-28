#!/bin/bash
########################################################################
#
#   Autor: Miguel Ángel García Rodríguez <miguelangel2e2005@gmail.com>
#
#   Objetivo: Hacer pruebas con scripts. 
#
#   Entrada: Números
#
#   Salida: Mostrar suma.
#
#   Versión: 1
#   
#   Historial:
#   2023-12-18
#
########################################################################
celsius=$(( ($1 - 32)* 5 / 9 ))
echo "${1}ºf son ${celsius}ºC"