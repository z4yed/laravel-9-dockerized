#!/bin/sh

cp .env.example .env

if [ ! -d "/vendor" ]; then
   composer install
   php artisan key:generate
fi

php artisan serve --host=0.0.0.0
