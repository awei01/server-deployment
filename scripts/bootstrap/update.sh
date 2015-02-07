#!/usr/bin/env bash

cat <<STOP
|--------------------------
| Update server
|--------------------------

STOP

aptitude update
aptitude upgrade -y
apt-get update
