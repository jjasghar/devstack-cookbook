name             'devstack_chef'
maintainer       "Rackspace US, Inc"
license          "Apache 2.0"
description      'Installs/Configures devstack_chef'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w{ amazon centos debian fedora oracle redhat scientific ubuntu }.each do |os|
  supports os
end

%w{ git }.each do |dep|
  depends dep
end

recipe "devstack_chef::default",
  "Clones the devstack repo and installs the configured stack"

attribute "devstack-chef/host-ip",
  :description => "The host/ip to bind the stack to",
  :default => "198.101.10.10"

attribute "devstack-chef/database-password",
  :description => "The password for the DevStack database",
  :default => "ostackdemo"

attribute "devstack-chef/rabbit-password",
  :description => "The password for the rabbit service",
  :default => "ostackdemo"

attribute "devstack-chef/service-token",
  :description => "The token for the DevStack service user",
  :default => "token"

attribute "devstack-chef/service-password",
  :description => "The password for the DevStack service user",
  :default => "ostackdemo"

attribute "devstack-chef/admin-password",
  :description => "The password for the DevStack admin user",
  :default => "ostackdemo"

attribute "devstack-chef/dest",
  :description => "The directory to install DevStack",
  :default => "/opt/stack"

attribute "devstack-chef/pip-timeout",
  :description => "The default time out for pip",
  :default => "1000"
