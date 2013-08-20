## A Node.js dev Virtual Machine provisioned by Chef

This is a personal experiment to simplify spinning up a dev box for Node.js 
projects. I intend to expand the provisioning to deploy Yeoman to aid
in scaffolding new web applications.

Please, please, please feel free to contribute.


The VM image created currently has the following properties:
 - Ubuntu 12.10 64 bit
 - nginx
 - Node.js
 - Postgres
 - Java 7 (openjdk)
 - ElasticSearch
 - ElasticSearch Head 
 - Redis

### Requirements
  - VirtualBox (https://www.virtualbox.org)
  - Vagrant (http://docs.vagrantup.com/v2/installation/index.html)
  - Git 

### Usage

	git clone
	cd vagrant-chef-node-postgres-elastic-redis
	vagrant up
	vagrant ssh
	sudo ./postinstall.sh # Run on VM


#### Optional 

You can install Librarian Chef to install new cookbooks provided you have Ruby installed. Use the following command:

 	gem install librarian-chef --no-ri --no-rdoc

 You can then add cookbooks to your Cheffile and run 

 	librarian-chef install

 This will store the cookbooks added into your
 cookbooks folder. You can then use these cookbooks for provisioning your VM by specifying requirements in your Vagrantfile.
 A very useful point of reference for this is on the [Opsdoce community site](http://community.opscode.com/cookbooks)

  

