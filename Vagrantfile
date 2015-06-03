# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "trusty64"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

  config.vm.define "mongo2" do |mongo2|
    mongo2.vm.network :private_network, ip: "192.168.33.12"
    mongo2.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "512", "--cpus", "2"]
	vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end
    mongo2.vm.provision "shell", path: "provisioning/mongo2.sh"
  end

  config.vm.define "mongo3" do |mongo3|
    mongo3.vm.network :private_network, ip: "192.168.33.13"
    mongo3.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "512", "--cpus", "2"]
  	vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end
     mongo3.vm.provision "shell", path: "provisioning/mongo3.sh"
  end

  config.vm.define "mongo1" do |mongo1|
    mongo1.vm.network :private_network, ip: "192.168.33.11"
    mongo1.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "512", "--cpus", "2"]
  	vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end
    mongo1.vm.provision "shell", path: "provisioning/mongo1.sh"
  end


end
