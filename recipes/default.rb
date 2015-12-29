#
# Cookbook Name:: quotemonitor
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
include_recipe 'influx::default'
include_recipe 'grafana::default'
