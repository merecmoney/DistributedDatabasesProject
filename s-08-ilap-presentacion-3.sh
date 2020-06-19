#!/bin/bash
#@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
#@Fecha creación: 18/06/2020
#@Descripción: Archivo de carga inicial para catalogos replicados.

#Si ocurre un error, el programa termina.
set -e
set -o pipefail

#En caso de no econtrar el directorio, extrae el contenido del archivo zip
if [ ! -d "/tmp/bdd/proyecto-final/imagenes/laptops" ]; then
  echo "Copiando imagenes - laptops de muestra "
  mkdir -p /tmp/bdd/proyecto-final/imagenes
  unzip carga-inicial/laptops.zip -d /tmp/bdd/proyecto-final/imagenes
else
  echo "=> Las imagenes - laptops de muestra ya fueron copiadas"
fi

if [ ! -d "/tmp/bdd/proyecto-final/imagenes/facturas" ]; then
  echo "Copiando imagenes - facturas de muestra"
  mkdir -p /tmp/bdd/proyecto-final/imagenes
  unzip carga-inicial/facturas.zip -d /tmp/bdd/proyecto-final/imagenes
else
  echo "=> Las imagenes - facturas de muestra ya fueron copiadas."
fi

#Actualiza permisos
chmod -R 755 /tmp/bdd/proyecto-final