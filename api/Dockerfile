FROM php:8.0

RUN apt-get update -y && apt-get install -y openssl zip unzip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /app/api
COPY . .

RUN chmod 777 -R storage

EXPOSE 8000

ENTRYPOINT [ "sh", "/app/api/docker/entrypoint.sh" ]
