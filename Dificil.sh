# Declaramos funciones para evitar que nuestro parsing sea algo legible. 
# Es una las
function horasasegundos {
    IFS=":"
    read -a numero <<< $tiempo
    segundos=${numero[2]}
    minutos=${numero[1]}
    horas=${numero[0]}
    let "segundosTotales=segundos + minutos*60 + horas*3600"
    unset IFS
}
function segundosahoras { #Es necesario haber invocado horasasegundos antes.
    segundos=$(printf "%02d\n" $(($1 % 60)))
    minutos=$(printf "%02d\n" $((($1 / 60) % 60)))
    horas=$(printf "%02d\n" $((($1 / 60) / 60)))
    #printf nos permite mantener los ceros de margen para evitar que 05 se convierta en 5

}
function ordenar {
    IFS=$'\n'
    Ordenado=($(sort -r <<<"${usuarioTiempoSegundos[*]}")) 
    unset IFS
}

declare -A usuarioTiempoSegundos #Es necesario declarar los arrays asociativos. De lo contrario interpreta
declare -A usuarioTiempoCadena   #todos los indices como [0] al considerar el texto como nulo. Divertido de descubrir. 

while IFS=" " read -r nombre tiempo
do
    horasasegundos $tiempo
    usuarioTiempoSegundos[$nombre]=$((${usuarioTiempoSegundos[$nombre]} + $segundosTotales))
    segundosahoras ${usuarioTiempoSegundos[$nombre]}
    usuarioTiempoCadena[$nombre]=$horas:$minutos:$segundos
done < usuarios.txt

ordenar

for i in "${Ordenado[@]}"
    do
    for key in "${!usuarioTiempoCadena[@]}"
        do
        if [[ $i == ${usuarioTiempoSegundos[$key]} ]]
            then
        echo "$key => ${usuarioTiempoCadena[$key]}"
            fi
    done
done



