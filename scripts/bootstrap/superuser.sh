#!/usr/bin/env bash

cat <<STOP
|--------------------------
| Create superuser:admin
|--------------------------

STOP

getent passwd vagrant >/dev/null 2>&1 && {
	echo 'Not creating superuser because this is a Vagrant installation'
	return 2>/dev/null || exit 0
}

# add super user if not already added
getent passwd superuser >/dev/null 2>&1 && {
	echo 'superuser already created'
} || {
	adduser superuser
	usermod -a -G admin superuser
}
