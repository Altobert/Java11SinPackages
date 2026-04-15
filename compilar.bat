@echo off
setlocal

rem Compila todos los archivos .java en el directorio src y los coloca en el directorio classes
echo "Compilando archivos .java en src..."

rem Compilando
echo "*********Compilacion*********"
echo "Compilando archivos .java..."
echo "Compilando paquete cat: "
javac -d classes src/cat/*.java 

rem Ejecutando
echo "*********Ejecucion*********"
java -cp classes cat.BigCat
echo "Ejecucion finalizada."

endlocal