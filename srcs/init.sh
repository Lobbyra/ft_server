# Nginx
service nginx start
ln -s /etc/nginx/sites-available/wordpress /etc/nginx/sites-enabled/wordpress

# MariaDB

/etc/init.d/mysql start

# Wordpress

mysql --user=root <<_EOF_
  CREATE DATABASE wordpress;
  CREATE USER 'wpuser'@'localhost' IDENTIFIED BY 'secure_password';
  GRANT ALL ON wordpress.* TO 'wpuser'@'localhost' IDENTIFIED BY 'secure_password' WITH GRANT OPTION;
  FLUSH PRIVILEGES;
_EOF_

service php7.3-fpm start

read -n 999
