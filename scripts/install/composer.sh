#!/usr/bin/env bash

cat <<STOP
|--------------------------
| Install Composer
|--------------------------

STOP

# install composer if it's not already there
FILE=/usr/local/bin/composer.phar
if [ -f $FILE ]; then
	echo 'Composer already installed'
else
	echo 'Installing...'
	curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin
fi

# see if we're on a vagrant box and determine the home file
HOME=/home/superuser
getent passwd vagrant >/dev/null 2>&1 && {
	HOME=/home/vagrant
}

if [ ! -d $HOME ]; then
	echo 'The home directory [' $HOME '] does not exist'
	return 2>/dev/null || exit 1
fi

FILE=$HOME/.bash_aliases
if [ ! -f $FILE ]; then
	echo 'Creating [' $FILE ']'
	touch $FILE
fi

ALIAS="alias composer=/usr/local/bin/composer.phar"
if grep -Fxq "$ALIAS" $FILE; then
	echo 'Alias for [composer] already exists'
else
	echo $ALIAS >> ~/.bash_aliases
	source ~/.bash_aliases
fi
