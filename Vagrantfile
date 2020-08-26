# -*- mode: ruby -*-
# vi: set ft=ruby :

#partially based on https://github.com/jonashackt/vagrant-travisci-libvrt/blob/master/Vagrantfile

Vagrant.configure("2") do |config|
	# config.vm.provider "virtualbox" do |v|
	# 	v.memory = 8096
	# end

	config.vm.provider :libvirt do |libvirt|
		libvirt.driver = "qemu"
		libvirt.memory = 8096
  	end
  	
	config.vm.box = "debian/buster64"

    # Vagrant boot needs more time on AppVeyor (see https://help.appveyor.com/discussions/problems/1247-vagrant-not-working-inside-appveyor)
    config.vm.boot_timeout = 1800

    # Prevent SharedFoldersEnableSymlinksCreate errors
    config.vm.synced_folder ".", "/vagrant", disabled: true

	config.vm.provision :shell, path: "bootstrap.sh", privileged: false
end
