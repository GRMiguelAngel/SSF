clear
echo "************"
echo "*** MENÚ ***"
echo "************"
echo ""
echo "Porlibre: Mostrar el espacio libre de la partición raíz(%)"
echo "Tamlibre: Mostrar el espacio libre de la partición raíz(tamaño)"
echo "Usuario: Indica el usuario actual"
echo "Maquina: Mostrar el nombre de la máquina"
echo "Usuarios: Mostrar número de usuarios en el sistema"
echo "Espacio: Mostrar espacio total usado"
echo ""
read -p "Introduzca su opción: " opcion

case "$opcion" in

    Porlibre|porlibre|PORLIBRE|1) ls -h
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