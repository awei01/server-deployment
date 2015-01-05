#!/usr/bin/env bash

echo '--------------------------'
echo 'securing ssh'
echo '--------------------------'
adduser superuser
usermod -a -G sudo superuser
sed -i 's/^Port .*$/Port 5222/g' /etc/ssh/sshd_config
sed -i 's/^PermitRootLogin .*$/PermitRootLogin no/g' /etc/ssh/sshd_config
service ssh restart

