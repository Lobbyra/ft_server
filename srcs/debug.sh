echo "ls -la /var/www"
ls -la /var/www/

echo "ls -la /var/www/html"
ls -la /var/www/html

echo "ls -la /etc/nginx/sites-available"
ls -la /etc/nginx/sites-available

echo "ls -la /etc/nginx/sites-enabled"
ls -la /etc/nginx/sites-enabled

echo "tail -c 9999 /etc/nginx/sites-enabled/*"
tail -c 9999 /etc/nginx/sites-enabled/*

echo "cat /var/www/html/wordpress/wp-config.php"
cat /var/www/html/wordpress/wp-config.php
