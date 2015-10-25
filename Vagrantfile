# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network :private_network, ip: "192.168.50.3"

  # config.vm.synced_folder "/local/path/to/myapp", "/srv/myapp"
  # config.vm.synced_folder "/local/path/to/anotherapp", "/srv/anotherapp"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "node-development"
    vb.customize ["modifyvm", :id, "--memory", 1024]
  end

  ###  SYNC FOLDER ###
  # Place contents in folder to sync
  config.vm.synced_folder "development/", "/web"
  config.vm.synced_folder "ssh/", "/home/.ssh"

  ### ADD SSH ###
  #config.vm.provision "shell", :path => "scripts/ssh.sh", privileged: false

  ### Add NVM and Node
  config.vm.provision "shell", :path => "scripts/node-setup.sh", privileged: false
  config.vm.provision "shell", :path => "scripts/mongo.sh", privileged: false
end
