default['devstack']['host_ip'] = '' # default is unset

default['devstack']['admin_password'] = 'ostackdemo'
default['devstack']['database_password'] = node['devstack']['admin_password']
default['devstack']['rabbit_password'] = node['devstack']['admin_password']
default['devstack']['service_token'] = node['devstack']['admin_password']
default['devstack']['service_password'] = node['devstack']['admin_password']
default['devstack']['dest'] = '/opt/stack'
default['devstack']['user'] = 'devstack'
default['devstack']['git_repo'] = 'https://github.com/openstack_dev/devstack.git'
default['devstack']['git_branch'] = 'master'
default['devstack']['enable_docker'] = false
# Django...
default['devstack']['pip_timeout'] = "1000"

default['devstack']['additional_options'] = []

default['devstack']['enable_services']  = []
default['devstack']['disable_services'] = []