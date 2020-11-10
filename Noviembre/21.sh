clear
usuario=$(whoami)
if [ usuario != root ] 
then 
echo "Hola $usuario, lo siento pero no eres root ;-)"
else
echo "Bienvenido patron"
fi