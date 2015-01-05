#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo '--------------------------'
echo 'provision server'
echo '--------------------------'
. $DIR/install-mysql.sh
. $DIR/install-webserver.sh
. $DIR/install-composer.sh
