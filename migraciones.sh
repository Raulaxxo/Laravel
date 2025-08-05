#!/bin/bash

# Nombre del contenedor PHP
CONTAINER=laravel-app

echo "📦 Ejecutando Composer Update dentro del contenedor $CONTAINER..."

docker exec -it $CONTAINER composer update

echo "📦 Ejecutando migraciones en $CONTAINER..."

docker exec -it $CONTAINER php artisan migrate --force

echo "✅ Migraciones ejecutadas correctamente."
