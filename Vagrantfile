# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "centos-7.0-x86_64"
  config.vm.network "forwarded_port", guest: 3000, host: 1234, host_ip: "127.0.0.1"
  config.vm.synced_folder "~/Documents/share", "/home/vagrant/share", create: true, owner: "vagrant", group: "vagrant"
end
