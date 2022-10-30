FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN rm /var/www/html/index.html
COPY . /var/www/html/
CMD service apache2 start; /bin/bash
