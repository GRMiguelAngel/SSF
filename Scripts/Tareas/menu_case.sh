clear
echo "************"
echo "*** MENÚ ***"
echo "************"
echo ""
echo "a: Mostrar el contenido del directorio"
echo "b: Mostrar el espacio libre del disco"
echo "c: Mostrar los permisos del contenido del directiorio"
echo "d: Mostrar la memoria libre"
echo ""
read -p "Introduzca su opción: " opcion

case "$opcion" in

    a|A|1) ls -h
    ;;

    b|B|2) df -h
    ;;
    
    c|C|3) 
    read -p "Introduzca nombre del fichero: " nombre_fich
    stat -c "%a %A %n" $nombre_fich
    ;;

    d|D|4) free
    ;;

    *) echo "ERROR: '$opcion' no es una opción válida."
    ;;
esac