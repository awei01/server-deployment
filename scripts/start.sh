#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cat <<STOP
|--------------------------
| Start installation
|--------------------------
STOP

# self update server
. $DIR/bootstrap/update.sh

# set the default settings (editor and timezone)
. $DIR/bootstrap/settings.sh

# lock down this server
. $DIR/bootstrap/superuser.sh
. $DIR/bootstrap/ssh.sh

# provision the server
. $DIR/provision.sh

cat <<STOP
|--------------------------
| Installation complete
|--------------------------
STOP
