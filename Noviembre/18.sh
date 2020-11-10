input=$1
let "i = input % 2"
if [[ $i != 0 ]]
then
echo "$input es impar"
else 
echo "$input es par"
fi