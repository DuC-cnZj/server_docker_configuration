#!/usr/bin/env bash
cd /var/www/html && php artisan migrate --force && chown -R www-data: storage/ public/
