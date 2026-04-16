#!/bin/bash

# Script de compilación mejorado para proyectos Java
echo "=== Compilador Java - Versión Mejorada ==="

# Crear directorio classes si no existe
mkdir -p classes

# Limpiar compilaciones anteriores
echo "Limpiando compilaciones anteriores..."
rm -rf classes/*

# Compilando todos los archivos Java de una vez
echo "*********Compilacion*********"
echo "Compilando todos los archivos .java en src/..."

# Buscar todos los archivos .java y compilarlos
find src -name "*.java" | xargs javac -d classes

# Verificar si la compilación fue exitosa
if [ $? -eq 0 ]; then
    echo "✅ Compilación exitosa."
    
    # Mostrar estructura compilada
    echo ""
    echo "Clases compiladas:"
    find classes -name "*.class" | sort
    
    # Ejecutando clase principal
    echo ""
    echo "*********Ejecucion*********"
    echo "Ejecutando cat.BigCat..."
    java -cp classes cat.BigCat
    echo "Ejecución finalizada."
else
    echo "❌ Error en la compilación."
    exit 1
fi