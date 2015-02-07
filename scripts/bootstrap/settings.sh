#!/usr/bin/env bash

cat <<STOP
|--------------------------
| Configure editor and timezone
|--------------------------

STOP

update-alternatives --config editor
dpkg-reconfigure tzdata
