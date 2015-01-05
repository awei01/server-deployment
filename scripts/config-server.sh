#!/usr/bin/env bash

echo '--------------------------'
echo 'configure server'
echo '--------------------------'
update-alternatives --config editor
dpkg-reconfigure tzdata
