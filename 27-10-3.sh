rm palabras.txt
while :
do
read entrada
if [[ $entrada == "salir" ]]
then
break
fi
if [[ $entrada =~ ^[+-]?[0-9]+$ ]] 
then
    echo $(head -n $entrada palabras.txt | tail -n+$entrada)
else
    echo $entrada >> palabras.txt
fi
done
echo "Adios"