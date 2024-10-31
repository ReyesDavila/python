#!/bin/bash

# Ruta a tu archivo Python
python_file="server.py"

# Busca la primera versión de Python disponible en el sistema
python_version=$(which python || which python3 || which py)

# Ejecuta el archivo Python con la versión encontrada
if [ -n "$python_version" ]; then
  "$python_version" "$python_file"
else
  echo "No se encontró ninguna versión de Python en el sistema."
fi