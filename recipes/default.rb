 #
# Cookbook Name:: devstack_chef
# Recipe:: default
#
# Copyright 2012, Rackspace US, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'git'

directory "#{node['devstack_chef']['dest']}/.pip" do
  owner "root"
  group "root"
  mode 00755
  action :create
  recursive true
end

git node['devstack_chef']['dest'] do
  repository "https://github.com/openstack-dev/devstack.git"
  reference "master"
end

template "#{node['devstack_chef']['dest']}/localrc"

template "#{node['devstack_chef']['dest']}/.pip/pip.conf"

execute "stack.sh" do
  command "./stack.sh > /var/log/devstack.log"
  cwd "#{node['devstack_chef']['dest']}"
end
