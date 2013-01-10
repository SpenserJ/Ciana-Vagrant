package "git-core"

bash "clone Ciana repository to home folder" do
  code <<-EOH
  git clone git://github.com/SpenserJ/Ciana.git /home/vagrant/ciana
  EOH
  creates "/home/vagrant/ciana"
  user "vagrant"
end