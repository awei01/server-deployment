#!/usr/bin/env bash

echo 'install mysql'
apt-get install mysql-server -y
mysql_install_db
mysql_secure_installation

