#!/bin/bash

# Update CentOS with any patches
yum update -y --exclude=kernel

# Tools
yum install -y nano git unzip screen

# Apache
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop

rm -rf /var/www/html
ls -s /vagrant /var/www/html
service httpd start

# PHP
yum install -y php php-cli php-commn php-devel php-msql

#MySQL
yum install -y mysql mysql-server mysql-dever
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";

# Download Starter Content


service httpd restart