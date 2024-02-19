clear
echo "************"
echo "*** MENÚ ***"
echo "************"
echo ""
echo "porlibre: Espacio libre de la partición raíz (en porcentaje)."
echo "tamlibre: Espacio libre de la partición raíz (en tamaño)."
echo "usuario: Usuario actual."
echo "maquina: Nombre de la máquina."
echo "usuarios: Número de usuarios del sistema."
echo "espacio: Espacio usado en todos los directorios."
echo "libre: Memoria libre" 
echo "salir: Salir del sistema"  
echo -p "Introduzca su opción: " opcion

case "$opcion" in

    porlibre|1) porcentaje_libre=$(df -h | cut -f5)
    echo "El porcentaje de disco libre es $porcentaje_libre"
    ;;

    tamlibre|2)tamaño_libre=$(df -h | cut -f3)
    echo "El espacio del disco libre es $tamaño_libre"
    ;;

    usuario|3) usuario=$(whoami)
    echo "Usuario: $usuario"
    ;;
    
    maquina|4) 
    maquina=$(hostname) 
    echo "El nombre de la máquina es $maquina"
    ;;

    usuarios|5)
    usuarios=$(who | cut -d " " -f 1 | sort -u | wc -l)
    echo "El total de usuarios de esta máquina es $usuarios"
    ;;

    espacio|6)
    espacio_usado=$(du -sh /home/* | cut -f1) 
    echo "El espacio usado de directorios personales es $espacio_usado"
    ;;

    permisos|7)
    datos_permisos=$(ls -ld ~)

    *) echo "ERROR: '$opcion' no es una opción válida."
    ;;
esac