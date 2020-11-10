PS3="Elija su opcion: "
opciones=("Mostrar fecha" "Mostrar usuarios conectados" "Mostrar el directorio de trabajo" "Listar el contenido del directorio de trabajo")
select opt in "${opciones[@]}" #creamos un array, y seleccionamos valores segun su contenido, asi, su indice nos sirve para generar un menu
do
    case $opt in
        "Mostrar fecha")
            clear
            echo "la fecha es : "
            date
            break
        ;;
        "Mostrar usuarios conectados")
            clear
            echo "los usuarios conectados son"
            users
            break
        ;;
        "Mostrar el directorio de trabajo")
            clear
            echo "el directorio de trabajo es: " $PWD
            break
        ;;
        "Listar el contenido del directorio de trabajo")
            clear
            echo "el contenido del directorio de trabajo :"
            ls -l
            break
        ;;
        *) echo "Opcion no valida";;
    esac
done