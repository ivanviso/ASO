IFS=":"
read -a numero <<< 04:32:32
segundos=${numero[2]}
minutos=${numero[1]}
horas=${numero[0]}
let "segundosTotales=segundos + minutos*60 + horas*3600"
echo $horas $minutos $segundos
echo $segundosTotales
segundos=$(($segundosTotales % 60))
minutos=$((($segundosTotales / 60) % 60))
horas=$((($segundosTotales / 60) / 60))
echo $horas:$minutos:$segundos

