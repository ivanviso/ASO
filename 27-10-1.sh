while [[ $entrada != "salir" ]]
do
clear >$(tty)
read entrada
ArrayEntradas+=("$entrada")
done
for i in "${ArrayEntradas[@]}"
do
    if [[ $i != "salir" ]]
    then
    echo $i
    fi
done
echo "Adios"