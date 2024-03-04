#!/bin/bash
altura=$1
peso=$2
if [ $# -lt 2 ]; then
    echo 'ERROR: Debe indicar la altura y el peso'
    read -p 'Inidque la altura (en centímetros) y el peso (en kilogramos): ' altura peso
fi

IMC=$((10000*$peso/($altura * $altura)))

if [ "$IMC" -lt 16 ]; then
    echo "su Indice de Masa Corporal (IMC) es $IMC, se encuentra en la clasificacion de Delgadez severa"
    exit
fi
if [ "$IMC" -lt 17 ]; then
    echo "su Indice de Masa Corporal (IMC) es $IMC, se encuentra en la clasificacion de Delgadez moderada"
    exit
fi
if [ "$IMC" -lt 19 ]; then
    echo "su Indice de Masa Corporal (IMC) es $IMC, se encuentra en la clasificacion de Delgadez leve"
    exit
fi
if [ "$IMC" -lt 25 ]; then
    echo "su Indice de Masa Corporal (IMC) es $IMC, se encuentra en la clasificacion Normal"
    exit
fi
if [ "$IMC" -lt 30 ]; then
    echo "su Indice de Masa Corporal (IMC) es $IMC, se encuentra en la clasificacion de Preobesidad"
    exit
fi
if [ "$IMC" -lt 35 ]; then
    echo "su Indice de Masa Corporal (IMC) es $IMC, se encuentra en la clasificacion de Obesidad leve"
    exit
fi
if [ "$IMC" -lt 40 ]; then
    echo "su Indice de Masa Corporal (IMC) es $IMC, se encuentra en la clasificacion de Obesidad media"
    exit
fi
if [ "$IMC" -ge 40 ]; then
    echo "su Indice de Masa Corporal (IMC) es $IMC, se encuentra en la clasificacion de Obesidad mórbida"
    exit
fi