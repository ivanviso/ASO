if [[ $# -eq 1 ]]
then
    while :
    do
        read numero
        if [[ $numero -eq $1 ]]
        then
            echo "has acertado"
            break
        else
            if [[ $numero -gt $1 ]]
            then
                echo "mas bajo"
            fi
            if [[ $numero -lt $1 ]]
            then
                echo "mas alto"
            fi
        fi
    done
else
    echo "debes proporcionar un numero como argumento"
fi
