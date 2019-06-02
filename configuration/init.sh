#!/usr/bin/env bash
cd /var/www/html \
&& chown -R www-data: storage/ public/ vendor/ \
&& echo "done"
# && php artisan migrate --force \ 
