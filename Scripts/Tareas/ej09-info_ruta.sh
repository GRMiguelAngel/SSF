#!/bin/bash
elemento=$1
if [ "$#" -eq 0 ]; then
    echo "ERROR: No se indicó ningún elemento."
    exit
fi
if [ -e "$elemento" ]; then
    echo "El elemento $elemento EXISTE."
    if [ -f "$elemento" ]; then
        echo "El elemento $elemento es un fichero."
    elif [ -d "$elemento" ]; then
        echo "El elemento $elemento es un directorio."
    elif [ -l "$elemento" ]; then
        echo "El elemento $elemento es un enlace."
    fi
    if [ -r "$elemento" ]; then
        echo "El elemento $elemento tiene permisos de lectura."
    else
        echo "El elemento $elemento no tiene permisos de lectura."
    fi
    if [ -w "$elemento" ]; then
        echo "El elemento $elemento tiene permisos de escritura."
    else
        echo "El elemento $elemento no tiene permisos de escritura."
    fi
    if [ -x "$elemento" ]; then
        echo "El elemento $elemento tiene permisos de acceso/ejecución."
    else
        echo "El elemento $elemento no tiene permisos de acceso/ejecución."
    fi
else
    echo "El elemento $elemento NO EXISTE."
fi