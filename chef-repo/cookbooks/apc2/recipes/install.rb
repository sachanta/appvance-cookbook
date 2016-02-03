
# Cookbook Name:: apc2
# Recipe:: install
#
# Author:: Srikar Achanta (<srikar@appvance.com>)
#
# Copyright 2016, Appvance, Inc.

include_recipe 'apc2::set_attributes_from_version'

# install unzip package
package 'unzip' do
  action :install
end

if node['platform'] == 'ubuntu'
  include_recipe 'apt'
  apc_home = node['apc2']['home']

  directory apc_home do
     owner 'root'
     group 'root'
     mode '0755'
     action :create
end

# move APC binary to the target node
remote_file '/opt/apc2/File_Upload_Download_AppVance.zip' do
   source 'https://s3-us-west-2.amazonaws.com/srikar/File_Upload_Download_AppVance.zip'
   owner 'root'
   group 'root'
   mode '0755'
   action :create
end

bash 'install_apc' do
  user 'root'
  cwd '/opt/apc2/'
  code <<-EOH
    wget https://s3.amazonaws.com/appvancebuilds/apc2.2.zip
    unzip apc2.2.zip
    EOH
  not_if { ::File.exists?('/opt/apc2/version.txt')}
end
bash 'extract_apc' do
   cwd '/opt/apc2/'

   #unzip /opt/apc2/File_Upload_Download_AppVance.zip
end
  # unzip the APC folder
  # move MYSQL scripts to the target node
  # install APC schema on MYSQL

  #cookbook_file filePath do
  #  source "apcinstallfile.txt"
  #  mode "0644"
  #end
end
