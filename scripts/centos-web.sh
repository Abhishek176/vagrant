#!/bin/bash

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


# Download Starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/Abhishek176/vagrant/main/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/Abhishek176/vagrant/main/files/info.php
