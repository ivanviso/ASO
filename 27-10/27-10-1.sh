while [[ $entrada != "salir" ]]
do
clear >$(tty)
read entrada
ArrayEntradas+=("$entrada")
done
for i in "${ArrayEntradas[@]}"
do
    echo $i
done
echo "Adios"