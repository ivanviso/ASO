#Escribir un script que pida un número, lo compare con el número 8 y muestre un
#mensaje (el número es mayor / menor que 8)

read numero

if [[ "$numero" -gt 8 ]]
then
    echo "el numero es mayor que 8"
elif [[ "$numero" -lt 8 ]]
then
    echo "el numero es menor que 8"
elif [[ "$numero" = 8 ]]
then
    echo "el numero es igual a 8"
else
    echo "no es un numero valido o es nulo"
fi