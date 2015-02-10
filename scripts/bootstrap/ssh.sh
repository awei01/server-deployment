#!/usr/bin/env bash

cat <<STOP
|--------------------------
| Lock down SSH
|--------------------------

STOP
echo 'change username'
getent passwd vagrants >/dev/null 2>&1 && {
	echo 'Not locking down SSH because this is a Vagrant installation'
	return 2>/dev/null || exit 0
}

CONFFILE=/etc/ssh/sshd_config
if [ ! -f $CONFFILE ]; then
	echo "Cannot locate SSH config file [ $CONFFILE ]"
	return 2>/dev/null || exit 1
fi

PORT=$( grep '^Port 22$' $CONFFILE )
PERMITROOT=$( grep '^PermitRootLogin yes\|without-password$' $CONFFILE )
if [[ $PORT || $PERMITROOT ]]; then
	echo 'Backing up and updating SSH config file'
	cp $CONFFILE $CONFFILE.bak

	sed -i "s/^${PORT}$/Port 5222/g" $CONFFILE
	sed -i "s/^${PERMITROOT}$/PermitRootLogin no/g" $CONFFILE

	echo 'Restarting SSH...'
	service ssh restart
fi
