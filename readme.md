# Setting up server #

## Local development ##
* Install [Vagrant](http://www.vagrantup.com)
* Install [VirtualBox](https://www.virtualbox.org/)
* cd to here
* `vagrant up`
* `vagrant ssh`
* virtual box: `sudo chmod 755 /vagrant/scripts/*`
* virtual box: `sudo /vagrant/scripts/bootstrap-vm.sh`

## Server deployment ##
* `sudo apt-get update`
* `sudo apt-get install git`
* clone this repo `git clone https://github.com/awei01/server-deployment.git`
* `cd server-deployment`
* `sudo chmod 755 scripts`
* `sudo scripts/bootstrap-server.sh`
* `sudo scripts/provision-server.sh`
