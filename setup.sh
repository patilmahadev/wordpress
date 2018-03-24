#!/bin/bash

service mysqld start
mysql -u root -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('root1234');"
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root -p 'root1234' -e "create database wordpress;"

/usr/sbin/httpd -DFOREGROUND
