
host_cache_path = File.expand_path("../.cache", __FILE__)
guest_cache_path = "/tmp/vagrant-cache"

# ensure the cache path exists
FileUtils.mkdir(host_cache_path) unless File.exist?(host_cache_path)


Vagrant.configure("2") do |config|

  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest

 config.vm.define :ubuntu1204 do |ubuntu1204|
    ubuntu1204.vm.box      = 'opscode-ubuntu-12.04'
    ubuntu1204.vm.box_url  = 'https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box'
    ubuntu1204.vm.hostname = 'ubuntu1204'
    ubuntu1204.vm.network :private_network, ip: '192.168.76.10'
    ubuntu1204.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--cpus", "2"]
    end
    ubuntu1204.vm.provision :chef_solo do |chef|
      chef.provisioning_path  = guest_cache_path
      chef.log_level          = :debug
      chef.json               = {
        authorization: {
          sudo: {
            users: ['vagrant'],
            passwordless: true,
            include_sudoers_d: true
          }
        },
        devstack: {
          git_branch: 'ddf656fdb631e575c71c30dccd2ba0ec6a10d974',
          enable_services: ['heat','h-api','h-api-cfn','h-api-cw','h-eng']
        }
      }
      chef.run_list           = %w{ recipe[devstack::default] recipe[devstack::stack] }
    end
  end

end