# Server Deployment #

Set up a virtual development or server environment with the following:
* Ubuntu 14.04.1 LTS
* MySQL 5.5.40
* Apache/2.4.10 (Ubuntu)
* PHP 5.6.4-1

Additional configurations for virtual environment:
* mount local `./srv` to virtual machine's `/srv` folder

Additional configurations for server deployment:
* disable root access via ssh
* change ssh port to 5222
* create a new "superuser" user for ssh access

## Local development ##
* Install [Vagrant](http://www.vagrantup.com)
* Install [VirtualBox](https://www.virtualbox.org/)
* clone this repo `git clone https://github.com/awei01/server-deployment.git`
* `cd server-deployment`
* `vagrant up`
* `vagrant ssh`
* virtual box: `sudo chmod 755 /vagrant/scripts`
* virtual box: `sudo /vagrant/scripts/bootstrap-vm.sh`

## Server deployment ##
* `sudo apt-get update`
* `sudo apt-get install git`
* clone this repo `git clone https://github.com/awei01/server-deployment.git`
* `cd server-deployment`
* if needed, `sudo chmod 755 scripts`
* `sudo scripts/bootstrap-server.sh`
