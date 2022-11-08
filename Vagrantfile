
Vagrant.configure("2") do |config|

    config.vm.define "app" do |app|

    app.vm.box = "ubuntu/bionic64"

      app.vm.network "private_network", ip: "192.168.10.100"

      app.vm.synced_folder ".", "/home/vagrant/app" # change it to your home location 

      app.vm.provision "shell", path: "provision.sh" , run: "always"

                                     # provide path for your provision.sh 

    end

  

    config.vm.define "db" do |db|

      db.vm.box = "ubuntu/bionic64"

      db.vm.network "private_network", ip: "192.168.10.150"

      

    
    end
end