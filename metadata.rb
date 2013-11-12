name             'devstack'
maintainer       "Rackspace US, Inc"
license          "Apache 2.0"
description      'Installs/Configures devstack'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w{ amazon centos debian fedora oracle redhat scientific ubuntu }.each do |os|
  supports os
end

%w{ git sudo }.each do |dep|
  depends dep
end

recipe "devstack::default",
  "Clones the devstack repo and installs the configured stack"

attribute "devstack/host-ip",
  :description => "The host/ip to bind the stack to",
  :default => "198.101.10.10"

attribute "devstack/database-password",
  :description => "The password for the DevStack database",
  :default => "ostackdemo"

attribute "devstack/rabbit-password",
  :description => "The password for the rabbit service",
  :default => "ostackdemo"

attribute "devstack/service-token",
  :description => "The token for the DevStack service user",
  :default => "token"

attribute "devstack/service-password",
  :description => "The password for the DevStack service user",
  :default => "ostackdemo"

attribute "devstack/admin-password",
  :description => "The password for the DevStack admin user",
  :default => "ostackdemo"

attribute "devstack/dest",
  :description => "The directory to install DevStack",
  :default => "/opt/stack"

attribute "devstack/pip-timeout",
  :description => "The default time out for pip",
  :default => "1000"
