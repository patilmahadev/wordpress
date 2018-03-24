FROM centos:6

RUN yum install mysql mysql-server php-mysql httpd -y && echo "ServerName localhost" >> /etc/httpd/conf/httpd.conf

COPY . /var/www/html/

EXPOSE 80

ENTRYPOINT ["sh", "/var/www/html/setup.sh"]
