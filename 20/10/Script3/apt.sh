if [ $USER == 'root' ] 
then
apt update
apt upgrade -y
apt install wget -y
else 
echo "Este Script necesita ejecutarse con permisos de root"
fi