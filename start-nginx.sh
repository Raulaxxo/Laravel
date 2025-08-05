#!/bin/sh

# Verifica que APP_DOMAIN esté definido
if [ -z "$APP_DOMAIN" ]; then
  echo "ERROR: APP_DOMAIN no está definido"
  exit 1
fi

# Define nombre del archivo final
TARGET_CONF="/etc/nginx/conf.d/${APP_DOMAIN}.conf"

# Sustituye variable en template y guarda con el nombre del dominio
envsubst '${APP_DOMAIN}' < /etc/nginx/conf.d/default.conf.template > "$TARGET_CONF"

# Inicia nginx
nginx -g 'daemon off;'
