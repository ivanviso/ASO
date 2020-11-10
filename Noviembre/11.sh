read numero1
read numero2
if [[ $numero1 -gt $numero2 ]]
then 
echo "el 1 es mayor que 2"
elif [[ $numero1 -lt $numero2 ]]
then
echo "el 1 es menor que 2"
elif [[ $numero1 = $numero2 ]]
then 
echo "iguales"
fi