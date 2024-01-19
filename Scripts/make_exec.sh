#!bin/bash
name=$1
if [ $@ -eq 0 ]; then
    read -p "Introduzca un nombre: " $name
else
    if [ -e "$name" ]; then
        echo "$name existe."
    else
        echo "$name no existe."
    elif [ -f "$name" ]; then
        echo "$name es un fichero."
    else
        echo "$name no es un fichero."
    elif [ ! -x "$name" ]; then
        echo "$name no tiene permiso de acceso/ejecución. A continuación se le añadirá el permiso."
        chmod u+x $name
    else
        echo "$name tiene permiso de acceso/ejecución."