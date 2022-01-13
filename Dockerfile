#Base Installation
FROM ubuntu:16.04

#update and install apache2
RUN apt update & apt install apache2 -y

#COPY from local to container
COPY index.html /var/www/html

#START service apache2
CMD ["apachetl","-D","FOREGROUND"]

