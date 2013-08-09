# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "wheezy"

  config.vm.network :forwarded_port, guest: 80, host: 1234

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "chef/site-cookbooks"

    chef.run_list = [
        "recipe[vagrant_ci::default]"
    ]
  end
end
