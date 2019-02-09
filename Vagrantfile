# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.ssh.insert_key = false

  # VirtualBox.
  config.vm.define "virtualbox" do |virtualbox|
    virtualbox.vm.box = "file://builds/yuenfaytsang-centos7.box"
    config.vm.provider :virtualbox do |v|
    end
  end
end
