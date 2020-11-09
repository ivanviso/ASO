contador=0
suma=1
while [[ $contador -lt 101 ]]
do
    let "contador++"
    let "suma+=contador"
done
echo $suma

