#
# Cookbook:: lampstack
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

if Node['platform'] == 'ubuntu' or Node['platform] == 'centos'
    include_recipe 'lampstack::apachewithphp'
    
else
    raise 'This cookbook is supported only on ubuntu and centos
    
end

