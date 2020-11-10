groupadd ejercicios
while IFS=, read -r nombre edad
do
    usuarios+=" $nombre "
done < Nombres.txt
    for i in ${usuarios[@]}
    do
    adduser $i -g ejercicios
    tar /root/home-backup.tar.gz -cfv $(cat /etc/passwd | grep "$i" | cut -c":" -f6) 
    done