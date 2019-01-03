# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.ssh.insert_key = false

  # VirtualBox.
  config.vm.define "virtualbox" do |virtualbox|
    virtualbox.vm.box = "file://builds/packer-centos7-x86_64.box"
    config.vm.provider :virtualbox do |v|
    end
  end
end
