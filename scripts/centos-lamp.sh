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
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/Abhishek176/vagrant/main/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/Abhishek176/vagrant/main/files/info.php


service httpd restart