
# Cookbook Name:: apc2
# Recipe:: install
#
# Author:: Srikar Achanta (<srikar@appvance.com>)
#
# Copyright 2016, Appvance, Inc.

include_recipe 'apc2::set_attributes_from_version'


if node['platform'] == 'ubuntu'
  include_recipe 'apt'
  apc_home = node['apc2']['home']

  directory node['apc2']['home'] do
     owner 'root'
     group 'root'
     mode '0755'
     action :create
  end

  #cookbook_file filePath do
  #  source "apcinstallfile.txt"
  #  mode "0644"
  #end
end
