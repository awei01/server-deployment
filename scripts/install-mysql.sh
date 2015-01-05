#!/usr/bin/env bash

echo '--------------------------'
echo 'install mysql'
echo '--------------------------'
apt-get install mysql-server -y
mysql_install_db
mysql_secure_installation

