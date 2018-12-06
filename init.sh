#!/usr/bin/env bash
test -f /usr/bin/mysqldump && echo "mysqldump exists" || (apt update && apt install -y mysql-client-5.7)
# cd /var/www/html && php artisan migrate --force
