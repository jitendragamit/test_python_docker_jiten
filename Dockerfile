
FROM ubuntu:latest
RUN  apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    apache2 \
    mysql-server \
    curl \
    python3 \
    python3-pip \
	vim

RUN pip3 install requests
RUN pip3 install mysql-connector

EXPOSE 3306

COPY start-script.sh /root/
RUN chmod +x /root/start-script.sh
CMD /root/start-script.sh

RUN mkdir -p /var/run/mysqld
RUN chown mysql:mysql /var/run/mysqld

CMD mysqld_safe --skip-grant-tables &

COPY db_python_test.sql /var/www/html/db_python_test.sql
COPY client_call_api.py /var/www/html/client_call_api.py
COPY mac_address_lookup_api.py /var/www/html/mac_address_lookup_api.py
COPY apache2.conf /etc/apache2/apache2.conf
COPY readme.txt /var/www/html/readme.txt
COPY Dockerfile /var/www/html/Dockerfile
RUN chmod 777 /var/www/html/mac_address_lookup_api.py
COPY test.py /var/www/html/test.py
RUN chmod 777 /var/www/html/test.py

RUN a2enmod cgi

EXPOSE 80
CMD apachectl -D FOREGROUND

#RUN service apache2 restart