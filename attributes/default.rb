default['devstack']['host-ip'] = '' # default is unset

default['devstack']['admin-password'] = "ostackdemo"
default['devstack']['database-password'] = node['devstack']['admin-password']
default['devstack']['rabbit-password'] = node['devstack']['admin-password']
default['devstack']['service-token'] = node['devstack']['admin-password']
default['devstack']['service-password'] = node['devstack']['admin-password']
default['devstack']['dest'] = '/opt/stack'
default['devstack']['user'] = 'devstack'
default['devstack']['git_repo'] = 'https://github.com/openstack-dev/devstack.git'
default['devstack']['git_branch'] = 'master'
default['devstack']['enable_docker'] = false
# Django...
default['devstack']['pip-timeout'] = "1000"

default['devstack']['additional_options'] = []

default['devstack']['enable_services']  = []
default['devstack']['disable_services'] = []