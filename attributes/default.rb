default['devstack']['host_ip'] = '127.0.0.1' # default is localhost

default['devstack']['admin_password'] = 'devstack'
default['devstack']['database_password'] = node['devstack']['admin_password']
default['devstack']['rabbit_password'] = node['devstack']['admin_password']
default['devstack']['service_token'] = node['devstack']['admin_password']
default['devstack']['service_password'] = node['devstack']['admin_password']
default['devstack']['dest'] = '/opt/stack'
default['devstack']['create_user'] = true
default['devstack']['user'] = 'devstack'
default['devstack']['enable_git_clone'] = true
default['devstack']['git_repo'] = 'https://github.com/openstack-dev/devstack.git'
default['devstack']['git_branch'] = 'master'
default['devstack']['enable_docker'] = false

# Django...
default['devstack']['pip_timeout'] = '1000'

default['devstack']['additional_options'] = []

default['devstack']['enable_services']  = []
default['devstack']['disable_services'] = []