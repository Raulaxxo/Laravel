#!/bin/bash

CONTAINER=laravel-app

echo "Instalando Laravel Breeze dentro del contenedor $CONTAINER..."

docker exec -it $CONTAINER composer require laravel/breeze --dev
docker exec -it $CONTAINER php artisan breeze:install
docker exec -it $CONTAINER npm install
docker exec -it $CONTAINER npm run build
docker exec -it $CONTAINER php artisan migrate --force

echo "✅ Laravel Breeze instalado correctamente."
