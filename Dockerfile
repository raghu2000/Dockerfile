Label Project="dockertestproject"
Label Maintainer"macharaghu3@gmail.com"

Run apt-get update
RUN apt-get install -y apachetomcat
run echo

volume /var/www/html

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apahce2
ENV APACHE_PID_FILE /var/run/apache2/apache2$SUFFIX.PID
ENV APACHE_LOCK_DIR=/var/lock/apache2

RUN mkdir -p $APACHE_RUN_DIR$APACHE_LOCK_DIR$APACHE_LOG_DIR

EXPOSE 80
CMD ["apache","-DFOREGROUND"]
