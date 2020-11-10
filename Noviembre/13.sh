read A  
read B
read C
read D
clear
if [[ $A != A ]] && [[ $A != a ]]
then
echo $A "es un parametro incorrecto para A"
fi
if [[ $B != B ]] && [[ $B != b ]]
then
echo $B "es un parametro incorrecto para B"
fi
if [[ $C != A ]] && [[ $C != c ]]
then
echo $C "es un parametro incorrecto para C"
fi
if [[ $D != d ]] && [[ $A != D ]]
then
echo $D "es un parametro incorrecto para D"
fi