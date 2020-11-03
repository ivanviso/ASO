while :                        # equivalente a while true
suma=0
do
    read entrada
    if [[ $entrada == "promedio" ]]
    then
        break
    fi
     ArrayNumeros+=("$entrada")
done
for i in ${ArrayNumeros[@]}
do
    ((suma += i))
done
longitud=${#ArrayNumeros[@]}
let "promedio = suma / longitud"
echo "el promedio es $promedio"
