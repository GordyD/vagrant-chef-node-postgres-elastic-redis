Vagrant.configure("2") do |config|
    # The name of the box to use as a base for this VM
    config.vm.box = "precise64"
    # Where to retrieve the box from if it is not present locally
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    # Set the hostname of the VM
    config.vm.hostname = "cheffing"
    
    config.vm.network :private_network, ip: "192.168.33.18"
    # Create a NFS shared directory for the application. 
    # N.B NFS will not work first time you start the VM - vagrant ssh in then run sudo ./postinstall.sh
    # This will install the NFS client and tidy up the box after vagrant creation
    config.vm.synced_folder "../Code/dev", "/vagrant_data", :nfs => true
    # Chef Solo Provisioning - Install all the required infrastructure
    # config.vm.provision :shell, :inline => "gem install chef --version 11.4.4 --no-rdoc --no-ri --conservative"
    config.vm.provision "chef_solo" do |chef|
	    chef.cookbooks_path = "cookbooks"
        chef.node_name = "cheffing"
    	chef.add_recipe "apt"
    	chef.add_recipe "build-essential"
    	chef.add_recipe "nodejs::install_from_source"
	    chef.add_recipe "postgresql::client"
        chef.add_recipe "postgresql::server"
        chef.add_recipe "java"
        chef.add_recipe "elasticsearch"
        chef.add_recipe "git"

    	chef.json = {
      		"nodejs" => {
        		"version" => "0.10.6"
      		},
            "java" => {
                "install_flavor" => "openjdk",
                "version" => "7"
            },
            "elasticsearch" => {
                "cluster_name" => "tripjoin_elastic"
            },
            "postgresql" => {
                "password" => {
                    "postgres" => "password"
                }
            }
    	}
    end

    config.vm.provision :shell, :path => "shell/provision.sh"
end
