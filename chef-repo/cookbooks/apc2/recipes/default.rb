#
# Cookbook Name:: apc2
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'apc2::set_attributes_from_version'
include_recipe 'apc2::install'
