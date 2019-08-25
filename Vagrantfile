Vagrant.configure("2") do |config|
  #config.vm.box = "bento/ubuntu-18.04"
  config.vm.box = ENV['MYVAGRANT_BOX'] || "bento/ubuntu-18.04"

  # config.vm.box = "file://builds/virtualbox-ubuntu1604.box"

  config.vm.hostname = "myUbuntuBionic"
  # config.vm.synced_folder "src/", "/var/www/html"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "myExcalibur"
    vb.memory = "1024"
    vb.cpus = "1"
    vb.gui = false
  end

  config.vm.provision "ansible" do |ansible|
    ansible.extra_vars = {
      variable_host: "all",
      sys_user: "vagrant",
      variable_dotfile: "true"
    }
    # ansible.verbose = "v"
    # ansible.tags=["cleanup", "dotfile"]
    # ansible.tags="cleanup"
    ansible.playbook = "dotfiles.yml"
  end
end
