read DIR
if [ -d "$DIR" ]; then
cd $DIR
ficheros=$(find . -type f | wc -l)
directorios=$(find . -type d | wc -l)
echo "hay $ficheros ficheros y $(($directorios-1)) directorios" #Restamos uno por que cuenta el propio directorio.
else 
echo "path no valido"
fi