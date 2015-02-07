#!/usr/bin/env bash

if [ ! $DIR ]; then
	DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
fi

cat <<STOP
|--------------------------
| Start provisioning
|--------------------------
STOP

. $DIR/install/git.sh
. $DIR/install/mysql.sh
. $DIR/install/php-apache.sh
. $DIR/install/composer.sh
. $DIR/install/node.sh
. $DIR/install/clean.sh
