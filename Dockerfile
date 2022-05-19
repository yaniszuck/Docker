FROM  ubuntu:18.04
MAINTAINER yanis yanisyousnadj@gmail.com
RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive  apt-get  install -y nginx git

RUN rm -Rf /var/www/html/*

Run git clone https://github.com/diranetafen/static-website-example.git /var/www/html

EXPOSE 80


#ADD  static-website-example/  /var/www/html/


ENTRYPOINT ["/usr/sbin/nginx", "-g", "deamon off;"] 
