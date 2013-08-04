# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "wheezy"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "chef/site-cookbooks"

    chef.run_list = [
        "recipe[vagrant_ci::default]"
    ]
  end
end
