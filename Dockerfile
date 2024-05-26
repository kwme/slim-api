FROM webdevops/php-nginx:8.2-alpine

WORKDIR /app

ENV COMPOSER_ALLOW_SUPERUSER=1

COPY COPY --chown=nobody:nogroup . /app/
COPY ./dockerizer/php.ini /opt/docker/etc/php/php.ini
COPY ./dockerizer/vhost.conf /opt/docker/etc/nginx/vhost.conf

RUN ls -l
RUN composer install