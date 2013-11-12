default['devstack']['host-ip'] = "" # default is unset
default['devstack']['database-password'] = "ostackdemo"
default['devstack']['rabbit-password'] = "ostackdemo"
default['devstack']['service-token'] = "token"
default['devstack']['service-password'] = "ostackdemo"
default['devstack']['admin-password'] = "ostackdemo"
default['devstack']['dest'] = "/opt/stack"
default['devstack']['user'] = 'devstack'
default['devstack']['git_repo'] = "https://github.com/openstack-dev/devstack.git"
default['devstack']['git_branch'] = 'master'
default['devstack']['enable_docker'] = false
# Django...
default['devstack']['pip-timeout'] = "1000"

default['devstack']['additional_options'] = []

default['devstack']['enable_services']  = []
default['devstack']['disable_services'] = []