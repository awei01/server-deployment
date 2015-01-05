#!/usr/bin/env bash

echo 'install composer dependency manager'
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin
touch ~/.bash_aliases
echo 'alias composer=/usr/local/bin/composer.phar' >> ~/.bash_aliases
source ~/.bash_aliases
