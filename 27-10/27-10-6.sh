while IFS=, read -r nombre edad
do
    echo $nombre tiene $edad años
done < Nombres.txt