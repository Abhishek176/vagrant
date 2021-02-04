#!/bin/bash

#MySQL
yum install -y mysql mysql-server mysql-dever
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";