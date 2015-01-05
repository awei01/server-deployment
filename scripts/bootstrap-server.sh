#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
hash git 2>/dev/null || {
	echo 'You should apt-get update and install git first!'
	exit 1
}
echo '--------------------------'
echo 'bootstrapping server'
echo '--------------------------'
. $DIR/self-update.sh
. $DIR/config-server.sh
. $DIR/config-security.sh
. $DIR/provision-server.sh
