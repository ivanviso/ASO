function horasasegundos {
IFS=":"
read -a numero <<< $1
segundos=${numero[2]}
minutos=${numero[1]}
horas=${numero[0]}
let "segundosTotales=segundos + minutos*60 + horas*3600"
}

function segundosahoras {
segundos=$(($segundosTotales % 60))
minutos=$((($segundosTotales / 60) % 60))
horas=$((($segundosTotales / 60) / 60))
}

while IFS=, read -r nombre tiempo
do
horasasegundos $tiempo 
done < usuarios.txt

