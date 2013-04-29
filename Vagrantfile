Vagrant::Config.run do |config|

  #puppetmaster server
  config.vm.define :puppetmaster do |puppetmaster_config|
       puppetmaster_config.ssh.max_tries = 100
       puppetmaster_config.vm.box = "MyCentOS2"
       puppetmaster_config.vm.network("192.168.56.101")	
       puppetmaster_config.vm.host_name = "puppetmaster.biocom.net"
     # puppetmaster_config.vm.forward_port "stomp" ,6163, 6163
       puppetmaster_config.vm.provision :puppet do |puppetmaster_puppet|
       puppetmaster_puppet.pp_path = "/tmp/vagrant-puppet"
       puppetmaster_puppet.manifests_path = "manifests"
       puppetmaster_puppet.module_path = "modules"
       puppetmaster_puppet.manifest_file = "site.pp"
   end
  end
  
  #db server
  config.vm.define :db do |db_config|
       db_config.vm.box = "MyCentOS2"
       db_config.ssh.max_tries = 100
       db_config.vm.network("192.168.56.150")
       db_config.vm.host_name = "db.biocom.net"
     # db_config.vm.forward_port "mysql" ,3306, 3306
     # db_config.vm.forward_port("db", 3306, 3306)
       db_config.vm.provision :puppet do |db_puppet|
       db_puppet.pp_path = "/tmp/vagrant-puppet"
       db_puppet.manifests_path = "manifests"
       db_puppet.module_path = "modules"
       db_puppet.manifest_file = "site.pp"
   end
  end

  #web server
  config.vm.define :web do |web_config|
       web_config.vm.box = "MyCentOS2"
       web_config.ssh.max_tries = 100
       web_config.vm.network("192.168.56.155")
       web_config.vm.host_name = "web"
     # web_config.vm.forward_port "mysql" ,3306, 3307
       web_config.vm.provision :puppet do |web_puppet|
       web_puppet.pp_path = "/tmp/vagrant-puppet"
       web_puppet.manifests_path = "manifests"
       web_puppet.module_path = "modules"
       web_puppet.manifest_file = "site.pp"
   end
  end

  # Every Vagrant virtual environment requires a box to build off of.
  # config.vm.box = "MyCentOS2"
  # config.vm.box = "lucid32"
  # config.vm.box = "debian_squeeze_32"
  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  # config.vm.box_url = "http://domain.com/path/to/above.box"

  # Boot with a GUI so you can see the screen. (Default is headless)
  # config.vm.boot_mode = :gui

  # Assign this VM to a host only network IP, allowing you to access it
  # via the IP.
  # config.vm.network "33.33.33.10"

  # config.vm.host_name = "mysql"
  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  # config.vm.forward_port "http", 80, 8080
  # config.vm.forward_port "http", 80, 8080

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  # config.vm.share_folder "v-data", "/vagrant_data", "../data"
  #
  # Enable provisioning with chef solo, specifying a cookbooks path (relative
  # to this Vagrantfile), and adding some recipes and/or roles.
  #
  # config.vm.provision :chef_solo do |chef|
  # chef.cookbooks_path = "cookbooks"
  # chef.add_recipe "mysql"
  # chef.add_role "web"
  #
  # # You may also specify custom JSON attributes:
  # chef.json = { :mysql_password => "foo" }
  # end
  #
  # Enable provisioning with chef server, specifying the chef server URL,
  # and the path to the validation key (relative to this Vagrantfile).
  #
  # The Opscode Platform uses HTTPS. Substitute your organization for
  # ORGNAME in the URL and validation key.
  #
  # If you have your own Chef Server, use the appropriate URL, which may be
  # HTTP instead of HTTPS depending on your configuration. Also change the
  # validation key to validation.pem.
  #
  # config.vm.provision :chef_server do |chef|
  # chef.chef_server_url = "https://api.opscode.com/organizations/ORGNAME"
  # chef.validation_key_path = "ORGNAME-validator.pem"
  # end
  #
  # If you're using the Opscode platform, your validator client is
  # ORGNAME-validator, replacing ORGNAME with your organization name.
  #
end