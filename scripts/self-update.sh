#!/usr/bin/env bash

echo '--------------------------'
echo 'updating server'
echo '--------------------------'
aptitude update
aptitude upgrade -y
apt-get update
