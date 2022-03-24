# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "geerlingguy/ubuntu2004"

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "main.yml"
    ansible.galaxy_role_file = "requirements.yml"
    ansible.limit = "vagrant"
    ansible.inventory_path = "inventory"
  end

end
