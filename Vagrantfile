Vagrant::Config.run do |config|
  config.vm.box = "base"

  # config.vm.forward_port 3000, 3000
  config.vm.network :bridged

  #config.vm.share_folder "ciana", "/home/vagrant/ciana", "ciana"

  # allow for symlinks in the Ciana folder
  #config.vm.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/Ciana", "1"]

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "build-essential"
    chef.add_recipe "git"
    chef.add_recipe "nodejs"
    chef.add_recipe "nodejs::npm"
    chef.add_recipe "mongodb::10gen_repo"
    chef.add_recipe "mongodb::default"
    chef.add_recipe "ciana"
  end
end