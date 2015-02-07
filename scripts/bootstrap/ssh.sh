#!/usr/bin/env bash

cat <<STOP
|--------------------------
| Lock down SSH
|--------------------------

STOP

getent passwd vagrant >/dev/null 2>&1 && {
	echo 'Not locking down SSH because this is a Vagrant installation'
	return 2>/dev/null || exit 0
}

sed -i 's/^Port .*$/Port 5222/g' /etc/ssh/sshd_config
sed -i 's/^PermitRootLogin .*$/PermitRootLogin no/g' /etc/ssh/sshd_config
service ssh restart

