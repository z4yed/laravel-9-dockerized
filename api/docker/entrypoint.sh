#!/bin/sh

# copying the env
cp .env.example .env

php artisan migrate

if [ ! -d "/vendor" ]; then
   composer install
   php artisan key:generate
fi

php artisan serve --host=0.0.0.0
