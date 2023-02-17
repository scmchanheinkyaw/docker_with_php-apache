FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y apache2 php

COPY * /var/www/html/
COPY dir.conf /etc/apache2/mods-enabled/dir.conf

CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80