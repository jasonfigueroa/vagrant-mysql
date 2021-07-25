# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.box = "ubuntu/focal64"

  config.vm.define "db-server" do |db|
    config.vm.network "forwarded_port", guest: 3306, host: 33060, host_ip: "127.0.0.1"
    config.vm.provision "shell", path: "bootstrap.sh"
  end
end
