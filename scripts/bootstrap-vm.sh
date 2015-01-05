#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
echo '--------------------------'
echo 'bootstrapping VM'
echo '--------------------------'
. $DIR/self-update.sh
. $DIR/config-server.sh
. $DIR/install-git.sh
. $DIR/provision-server.sh
