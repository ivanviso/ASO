if [ $USER == 'root' ] 
then
cd $(dirname $0)
cd Script3/
bash main.sh
else 
echo "Este Script necesita ejecutarse con permisos de root"
fi