# Nginx
ln -s /etc/nginx/sites-available/wordpress /etc/nginx/sites-enabled/wordpress

# MariaDB

/etc/init.d/mysql start

# Wordpress

mysql --user=root <<_EOF_
  CREATE DATABASE wordpress;
  CREATE USER 'wpuser'@'localhost' IDENTIFIED BY 'secure_password';
  GRANT ALL ON wordpress.* TO 'wpuser'@'localhost' IDENTIFIED BY 'secure_password' WITH GRANT OPTION;
  CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin_pass';
  GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'admin_pass' WITH GRANT OPTION;
  FLUSH PRIVILEGES;
_EOF_

service php7.3-fpm start
service nginx restart
