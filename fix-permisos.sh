#!/bin/bash

# Nombre del contenedor PHP-FPM
CONTAINER=laravel-app

echo "🔧 Corrigiendo permisos dentro del contenedor $CONTAINER..."

docker exec -it $CONTAINER bash -c "
  chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache &&
  chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache &&
  echo '✅ Permisos corregidos correctamente.'
"
echo "🔧 Permisos corregidos. Ahora puedes continuar con tu desarrollo en Laravel."