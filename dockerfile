This is a sample dockerfile
From devopsedu/webapp
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y php
RUN rm -rf /var/www/html/*
COPY projCert-master/website /var/www/html/
RUN apt-get install -y vim
RUN echo "ServerName localhost"  >> /etc/apache2/apache2.conf
CMD apachectl -D FOREGROUND
