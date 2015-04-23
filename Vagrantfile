# Vim
# vim: set filetype=ruby:
# vim: set ft=ruby:
#
# Emacs
# -*- mode: ruby; -*-

VAGRANTFILE_API_VERSION = "2"
MAX_MEMORY = 1024

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    # Vagrant box to build on
    config.vm.box = "ubuntu/trusty64"

    # host to guest port forwarding
    config.vm.network :forwarded_port, guest: 80, host: 1339

    # settings for VirtualBox provider
    config.vm.provider "virtualbox" do |v|
        v.memory = MAX_MEMORY
    end

    # call provisioner shell scripts
    config.vm.provision :shell, path: "./vagrant-provisioner.sh"
    config.vm.provision :docker do |d|
        d.build_image "/vagrant", args: "-t \"dockerApp\""
        d.run "dockerApp"
    end
end
