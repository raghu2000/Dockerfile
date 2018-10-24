FROM ubuntu:16.04

LABEL Project="dockertestproject"
LABEL Maintainer"macharaghu3@gmail.com"

RUN apt-get update
RUN apt-get install -y apachetomcat
RUN echo "testdockerfile" > /var/www/html/index.html

VOLUME /var/www/html

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apahce2
ENV APACHE_PID_FILE /var/run/apache2/apache2$SUFFIX.PID
ENV APACHE_LOCK_DIR=/var/lock/apache2

RUN mkdir -p $APACHE_RUN_DIR $APACHE_LOCK_DIR $APACHE_LOG_DIR

EXPOSE 80

CMD ["apache","-DFOREGROUND"]
