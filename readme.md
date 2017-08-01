# Server Deployment #

Set up a virtual development or server environment with the following:
* Ubuntu 14.04.1 LTS

Provisioned software:
* MySQL 5.5.40
* Apache/2.4.10 (Ubuntu)
* PHP 5.6.30-5+deb.sury.org~trusty+2 (cli)
* PHP Composer dependency management tool


## Local development ##
* Install [Vagrant](http://www.vagrantup.com)
* Install [VirtualBox](https://www.virtualbox.org/)
* Create a new folder where you want your virtual machine to be stored: `mkdir my-virtual-machine`
* Change directory into your newly created folder: `cd my-virtual-machine`
* Clone this repository into the folder: `git clone https://github.com/awei01/web-server.git ./`
* Fire up the virtual machine: `vagrant up`
* Log into your virtual machine: `vagrant ssh`
* From virtual box, change the file modes so they can be executed: `sudo chmod -R 755 /vagrant/scripts`
* From virtual box, execute the following script: `sudo /vagrant/scripts/provision.sh`
