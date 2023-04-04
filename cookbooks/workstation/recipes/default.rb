#
# Cookbook:: workstation
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.

apt_update 'update'
include_recipe 'workstation::setup'
