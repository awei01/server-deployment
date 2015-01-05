#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

. $DIR/self-update.sh
. $DIR/configure-tools.sh
. $DIR/install-tools.sh
. $DIR/install-mysql.sh
. $DIR/install-webserver.sh
. $DIR/install-composer.sh
