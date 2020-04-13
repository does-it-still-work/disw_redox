# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	config.vm.provider "virtualbox" do |v|
		v.memory = 8096
		v.cpus = 8
	end
	config.vm.box = "generic/ubuntu1804"
	config.vm.provision :shell, path: "bootstrap.sh"
end
