#!/usr/bin/env bash

echo 'install php 5.6 and apache'
add-apt-repository ppa:ondrej/php5-5.6 -y
apt-get update
apt-get install php5 -y
