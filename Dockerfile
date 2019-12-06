FROM debian:buster

# Dependancies installation
##
RUN apt update	\
	&& apt install -y wget pwgen
##

# nginx installation
##
RUN apt install -y nginx

##

# MariaDB installation
##
RUN apt install -y \
	mariadb-server \
	mariadb-client

## 

# Wordpress installation
##

RUN apt install -y	\
	php				\
	php-curl		\
	php-gd			\
	php-intl		\
	php-mbstring	\
	php-soap		\
	php-xml			\
	php-xmlrpc		\
	php-cli			\
	php-json		\
	php-zip			\
	php-fpm			\
	php-mysql		\
	curl			\
	vim				\
	&& wget http://fr.wordpress.org/latest-fr_FR.tar.gz -P /tmp	\
	&& tar xzf /tmp/latest-fr_FR.tar.gz -C /var/www/html		\
	&& chown -R www-data:www-data /var/www/html/wordpress		\
	&& chmod -R 755 /var/www/html/wordpress						\
	&& rm /var/www/html/index.nginx-debian.html					
##

# PHPMYADMIN install
##

RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.2/phpMyAdmin-4.9.2-english.tar.gz	\
	&& mkdir /var/www/html/phpmyadmin											\
	&& tar -zxvf phpMyAdmin-4.9.2-english.tar.gz --strip-components=1 -C /var/www/html/phpmyadmin \
	&& cp /var/www/html/phpmyadmin/config.sample.inc.php /var/www/html/phpmyadmin/config.inc.php						\
	&& chmod 660 /var/www/html/phpmyadmin/config.inc.php						\
	&& chown -R www-data:www-data /var/www/html/phpmyadmin

##

# Copy my source files to use in debian
ADD . /home/

# Equivalent to RUN cd /home
WORKDIR /home/

ADD ./srcs/wordpress /etc/nginx/sites-available/
ADD ./srcs/default /etc/nginx/sites-available/
ADD ./srcs/wp-config.php /var/www/html/wordpress

# Execute my initialisation script to run services when the contenairs is started
CMD ["bash", "./srcs/init.sh"]
