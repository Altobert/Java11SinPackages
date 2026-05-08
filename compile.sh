#!/bin/bash

# Compilar todos los archivos .java en el directorio src y colocarlos en el directorio classes
echo "Compilando archivos .java en src..."

# Crear directorio classes si no existe
mkdir -p classes

# Compilando
echo "*********Compilacion*********"
echo "Compilando archivos .java..."

echo "Compilando paquete cat:"
javac -d classes src/cat/*.java  src/cat/species/*.java 


# Verificar si la compilación fue exitosa
if [ $? -eq 0 ]; then
    echo "Compilación exitosa."
    
    # Ejecutando
    echo "*********Ejecucion*********"
    #java -cp classes cat.BigCat
    java -cp classes cat.Principal
    echo "Ejecución finalizada."
else
    echo "Error en la compilación."
    exit 1
fi