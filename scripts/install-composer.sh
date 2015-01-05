#!/usr/bin/env bash

echo '--------------------------'
echo 'install composer dependency manager'
echo '--------------------------'
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin
touch ~/.bash_aliases
echo 'alias composer=/usr/local/bin/composer.phar' >> ~/.bash_aliases
source ~/.bash_aliases
