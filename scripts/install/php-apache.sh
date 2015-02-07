#!/usr/bin/env bash
cat <<STOP
|--------------------------
| Install PHP & Apache
|--------------------------

STOP

# install PHP & apache if they aren't installed
hash php 2>/dev/null 2>&1 && {
	echo 'PHP & Apache already installled'
} || {
	echo 'Installing...'
	add-apt-repository ppa:ondrej/php5-5.6 -y
	apt-get update
	apt-get install php5 -y
	apt-get install php5-curl -y
	apt-get install php5-mcrypt -y
	apt-get install php5-mysql -y
	a2enmod rewrite
	apachectl restart
}
