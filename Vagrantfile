
host_cache_path = File.expand_path("../.cache", __FILE__)
guest_cache_path = "/tmp/vagrant-cache"

# ensure the cache path exists
FileUtils.mkdir(host_cache_path) unless File.exist?(host_cache_path)

$script = <<SCRIPT
  apt-get update
  apt-get install curl -y
  curl -L https://www.opscode.com/chef/install.sh | sudo bash
SCRIPT

Vagrant.configure("2") do |config|

 config.vm.provision "shell", inline: $script

 config.vm.define :ubuntu1404 do |ubuntu1404|
    ubuntu1404.vm.box      = 'opscode-ubuntu-14.04'
    ubuntu1404.vm.box_url  = 'https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-14.04_provisionerless.box'
    ubuntu1404.vm.hostname = 'ubuntu1404'
    ubuntu1404.vm.network "public_network", ip: "192.168.100.60", bridge: 'en0: Wi-Fi (AirPort)'
    ubuntu1404.vm.network "private_network", ip: "192.168.200.60"
    ubuntu1404.vm.network "forwarded_port", guest: 443, host: 9443 # dashboard-ssl
    ubuntu1404.vm.network "forwarded_port", guest: 80, host: 8080 # dashboard
    ubuntu1404.vm.network "forwarded_port", guest: 4002, host: 4002
    ubuntu1404.vm.network "forwarded_port", guest: 5000, host: 5000
    ubuntu1404.vm.network "forwarded_port", guest: 8773, host: 8773 # compute-ec2-api
    ubuntu1404.vm.network "forwarded_port", guest: 8774, host: 8774 # compute-api
    ubuntu1404.vm.network "forwarded_port", guest: 35357, host: 35357

    ubuntu1404.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--memory", "4096"]
      v.customize ["modifyvm", :id, "--cpus", "2"]
    end
    ubuntu1404.vm.provision :chef_solo do |chef|
      chef.provisioning_path  = guest_cache_path
      chef.log_level          = :debug
      chef.json               = {
        authorization: {
          sudo: {
            users: ['vagrant','devstack'],
            passwordless: true,
            include_sudoers_d: true
          }
        },
        devstack: {
          git_branch: 'master',
        }
      }
      chef.run_list           = %w{ recipe[devstack::install] recipe[devstack::stack] }
    end
  end

end
