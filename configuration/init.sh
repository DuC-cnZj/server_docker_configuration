#!/usr/bin/env bash
cd /var/www/html
bash ./wait-for-it.sh db:3306 -- echo "db is up"
php artisan migrate --force
chown -R www-data: storage/ public/
php artisan db:seed --force
# php artisan elastic:create-index App\\ES\\ArticleIndexConfigurator > /dev/null 2>&1
# php artisan db:seed --class=ArticleTableSeeder --force
# php artisan scout:import "App\Article" > /dev/null 2>&1
