read in1
read in2
read in3
for i in {$in1,$in2,$in3}
do
    if [[ $i -ge $in1 ]] && [[ $i -ge $in2 ]] && [[ $i -ge $in3 ]]
    then
        mayor=$i
    fi
    let "total+=$i"
done
echo "el mayor es :" $mayor
echo "la media es :" $(($total/3))
echo $in1 $in2 $in3 | sort



