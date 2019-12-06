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
	php-curl		\
	php-gd			\
	php-intl		\
	php-mbstring	\
	php-soap		\
	php-xml			\
	php-xmlrpc		\
	php-zip			\
	php-fpm			\
	curl			\
	vim				\
	&& wget http://fr.wordpress.org/latest-fr_FR.tar.gz -P /tmp	\
	&& tar xzf /tmp/latest-fr_FR.tar.gz -C /var/www/html		\
	&& chown -R www-data:www-data /var/www/html/wordpress		\
	&& chmod -R 755 /var/www/html/wordpress						\
	&& rm /var/www/html/index.nginx-debian.html
##

# Copy my source files to use in debian
ADD . /home/

# Equivalent to RUN cd /home
WORKDIR /home/

ADD ./srcs/wordpress /etc/nginx/sites-available/
ADD ./srcs/wp-config.php /var/www/html/wordpress

# Execute my initialisation script to run services when the contenairs is started
CMD ["bash", "./srcs/init.sh"]
