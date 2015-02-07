# Server Deployment #

Set up a virtual development or server environment with the following:
* Ubuntu 14.04.1 LTS

Provisioned software:
* MySQL 5.5.40
* Apache/2.4.10 (Ubuntu)
* PHP 5.6.4-1
* PHP Composer dependency management tool
* node, npm

Additional configurations for virtual environment:
* Mount a local `../../sites` to virtual machine's `/srv` folder in addition to the default `/vagrant` folder

Additional configurations for server deployment:
* Disable root access via ssh
* Change ssh port to 5222
* Create a new "superuser:admin" user for ssh access

## Local development ##
* Install [Vagrant](http://www.vagrantup.com)
* Install [VirtualBox](https://www.virtualbox.org/)
* Clone this repo `git clone https://github.com/awei01/server-deployment.git`
* `cd server-deployment`
* `vagrant up`
* `vagrant ssh`
* From virtual box: `sudo chmod 755 /vagrant/scripts`
* From virtual box: `sudo /vagrant/scripts/start.sh`

## Server deployment ##
* `sudo apt-get update`
* `sudo apt-get install git`
* Clone this repo `git clone https://github.com/awei01/server-deployment.git`
* `cd server-deployment`
* If needed, `sudo chmod 755 scripts`
* `sudo scripts/start.sh`
