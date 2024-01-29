#!/bin/bash
first_num=$1
second_num=$2

if [ "$#" -eq 0 ] ; then
    read -p "Introduzca dos valores: " first_num second_num
    if [ "$first_num" -gt "$second_num" ] ; then
        echo "el número $first_num es mayor que $second_num"
    elif [ "$first_num" -lt "$second_num" ] ; then
        echo "el número $second_num es mayor que $first_num"
    else
        echo "el número $second_num es igual que $first_num"
    fi
elif [ "$#" -eq 1 ] ; then
    read -p "Por favor, introduzca un segundo valor: " second_num
    if [ "$first_num" -gt "$second_num" ] ; then
        echo "el número $first_num es mayor que $second_num"
    elif [ "$first_num" -lt "$second_num" ] ; then
        echo "el número $second_num es mayor que $first_num"
    else
        echo "el número $second_num es igual que $first_num"
    fi
elif [ "$#" -eq 2 ] ; then
    if [ "$first_num" -gt "$second_num" ] ; then
        echo "el número $first_num es mayor que $second_num"
    elif [ "$first_num" -lt "$second_num" ] ; then
        echo "el número $second_num es mayor que $first_num"
    else
        echo "el número $second_num es igual que $first_num"
    fi
else
    echo "WARNING: Solo serán seleccionados los dos primeros valores que ha indicado."
    if [ "$first_num" -gt "$second_num" ] ; then
        echo "el número $first_num es mayor que $second_num"
    elif [ "$first_num" -lt "$second_num" ] ; then
        echo "el número $second_num es mayor que $first_num"
    else
        echo "el número $second_num es igual que $first_num"
    fi
fi
