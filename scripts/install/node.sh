#!/usr/bin/env bash

cat <<STOP
|--------------------------
| Install Node & NPM
|--------------------------

STOP

# install nodejs if it isn't already installed
hash node 2>/dev/null 2>&1 && {
	echo 'Node already installled'
} || {
	echo 'Installing nodejs...'
	apt-get install nodejs-legacy -y
}

# install npm if it hasn't been
hash npm 2>/dev/null 2>&1 && {
	echo 'NPM already installed'
} || {
	echo 'Installing NPM...'
	apt-get install npm -y
}
