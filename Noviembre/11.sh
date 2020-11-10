read numero1
read numero2
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
