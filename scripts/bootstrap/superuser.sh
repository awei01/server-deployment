#!/usr/bin/env bash

cat <<STOP
|--------------------------
| Create superuser:admin
|--------------------------

STOP

getent passwd vagrant >/dev/null 2>&1 && {
	echo 'Not creating user because this is a Vagrant installation'
	exit 0
}

getent passwd superuser >/dev/null 2>&1 && EXISTS=true

# add super user if not already added
if [ $EXISTS ]; then
	echo 'superuser already created'
	exit 0
else
	adduser superuser
	usermod -a -G admin superuser
fi
