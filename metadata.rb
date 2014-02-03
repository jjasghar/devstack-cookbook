name             'devstack'
maintainer       "Rackspace US, Inc"
license          "Apache 2.0"
description      'Installs/Configures devstack'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

%w{ amazon centos debian fedora oracle redhat scientific ubuntu }.each do |os|
  supports os
end

%w{ git sudo }.each do |dep|
  depends dep
end

