read -p "introduzca el primer numero: " numero1
read -p "introduzca el segundo numero: " numero2

PS3="Elija su opcion: "
opciones=("Para sumar" "Para restar" "Para multiplicarlo" "Para dividirlo")
select opt in "${opciones[@]}" #creamos un array, y seleccionamos valores segun su contenido, asi, su indice nos sirve para generar un menu
do
    case $opt in
        "Para sumar")
            clear
            echo "$numero1 + $numero2 = $(($numero1+$numero2)) "
            break
        ;;
        "Para restar")
            clear
            echo "$numero1 - $numero2 = $(($numero1-$numero2)) "
            break
        ;;
        "Para multiplicarlo")
            clear
            echo "$numero1 x $numero2 = $(($numero1*$numero2)) "
            break
        ;;
        "Para dividirlo")
            clear
            echo "$numero1 / $numero2 = $(($numero1/$numero2)) "
            break
        ;;
        *) echo "Opcion no valida";;
    esac
done