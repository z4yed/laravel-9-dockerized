#!/bin/sh

cp .env.example .env

vendor=/vendor
if [ -d "$vendor" ]; then
    php artisan serve --host=0.0.0.0
else
    composer install
    php artisan key:generate
    php artisan serve --host=0.0.0.0
fi
