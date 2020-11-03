mayor=0
menor=10000
while IFS=, read -r nombre edad
do
    if [[ $edad -gt $mayor ]]
    then
        mayor=$edad
    fi
    if [[ $edad -lt $menor ]]
    then
        menor=$edad
    fi    
done < Nombres.txt

while IFS=, read -r nombre edad
do
extra=""
if [[ $edad == $mayor ]]
then
    extra="y es el mas mayor"
fi
if [[ $edad == $menor ]]
then
    extra="y es el mas menor"
fi
echo $nombre tiene $edad años $extra

done < Nombres.txt