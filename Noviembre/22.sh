if [[ $(date +%w) -gt 15 ]]
then
echo "estamos en la segunda quincena del mes"
else 
echo "estamos en la primera quincena del mes"
fi
if [[ $(date +%m) -gt 6 ]]
then
echo "estamos en la segunda mitad del ano"
else 
echo "estamos en la primera mitad del ano"
fi
