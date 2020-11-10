input=$1
if [[ $# -eq 1 ]]
then
    let "i = input % 101"
    if [[ $i = 0 ]]
    then
        echo "$input es divisible por 101"
    else
        echo "$input no es divisible por 101"
    fi
else
    echo "Se debe proporcionar un numero como input"
fi

