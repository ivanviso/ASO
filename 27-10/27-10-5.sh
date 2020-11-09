while :
do
    read entrada
    if [[ $entrada == "promedio" ]]
    then
        break
    fi
    if [[ $entrada =~ ^[+-]?[0-9]+$ ]]
    then
        ArrayNumeros+="$entrada"
    else
        echo "solo acepta numeros y promedio"
    fi
done
longitud=${#ArrayNumeros[@]}
for i in ${ArrayNumeros[@]}
do
    let "suma+=i"
done
let "promedio=suma/longitud"
echo "el promedio es $promedio"