FROM ubuntu:14.04
MAINTAINER "Kevin-Lee"
LABEL "pure"="webserver practice"
RUN apt-get update
RUN apt-get install apache2 -y
ADD ./test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo hell >> test.html"]
EXPOSE 80
CMD apachectl -D FOREGROUND
