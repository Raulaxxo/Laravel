# Entorno de Desarrollo Dockerizado para Laravel

Este proyecto proporciona un entorno de desarrollo Dockerizado para aplicaciones Laravel. Incluye:

*   **Contenedor de la Aplicación Laravel:** Ejecuta la aplicación Laravel utilizando PHP-FPM.
*   **Contenedor de la Base de Datos MySQL:** Proporciona una base de datos MySQL para la aplicación.
*   **Contenedor del Servidor Web Nginx:** Sirve la aplicación Laravel.

## Requisitos Previos

*   Docker
*   Docker Compose

## Primeros Pasos

1.  **Clona el repositorio:**

    ```bash
    git clone https://github.com/Raulaxxo/Laravel.git
    cd <directorio_del_proyecto>
    ```

2.  **Inicia los contenedores:**

    ```bash
    docker-compose up -d
    ```

3.  **Accede a la aplicación:**

    Abre tu navegador web y navega a `http://localhost:8000`.

## Configuración

El archivo `docker-compose.yml` configura los servicios. Puedes modificar lo siguiente:

*   **Puertos:** Cambia las asignaciones de puertos en las secciones `ports` de cada servicio.
*   **Variables de Entorno:** Modifica las variables de entorno para la base de datos en el servicio `db`.
*   **Volúmenes:** Ajusta las asignaciones de volúmenes para que se adapten a la estructura de tu proyecto.

## Desarrollo

*   El código de la aplicación Laravel se encuentra en el directorio `src`. Cualquier cambio que realices en este directorio se reflejará en el contenedor en ejecución.
*   Puedes acceder al contenedor de Laravel usando:

    ```bash
    docker exec -it laravel-app bash
    ```

## Base de Datos

*   El host de la base de datos es `db`.
*   Las credenciales predeterminadas de la base de datos son:
    *   **Base de Datos:** `laravel`
    *   **Usuario:** `laraveluser`
    *   **Contraseña:** `secret`

## Nginx

*   La configuración de Nginx se encuentra en el archivo `nginx/default.conf`.

## Revisiones de Salud

Cada servicio incluye una revisión de salud para asegurar que se está ejecutando correctamente.

## Volúmenes

*   `dbdata`: Persiste los datos de la base de datos MySQL.

## Contribución

Siéntete libre de contribuir a este proyecto enviando pull requests.

## Licencia

[Especifica