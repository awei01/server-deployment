#!/usr/bin/env bash
echo '--------------------------'
echo 'install php 5.6 and apache'
echo '--------------------------'
add-apt-repository ppa:ondrej/php5-5.6 -y
apt-get update
apt-get install php5 -y
apt-get install php5-curl -y
apt-get install php5-mcrypt -y
apt-get install php5-mysql -y
a2enmod rewrite
