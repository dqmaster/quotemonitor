#
# Cookbook Name:: quotemonitor
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
include_recipe 'supervisord::default'

begin
  t = resources('template[/etc/supervisord.conf]')
  t.source "supervisord.conf.erb"
  t.cookbook "quotemonitor"
rescue Chef::Exceptions::ResourceNotFound
  Chef::Log.warn "could not find template your template override!"
end