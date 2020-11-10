input=$1
if [[ $# -eq 1 ]]
then
    let "i = input % 2"
    if [[ $i != 0 ]]
    then
        echo "$input es impar"
    else
        echo "$input es par"
    fi
else
    echo "numero erroneo de parametros"
fi

