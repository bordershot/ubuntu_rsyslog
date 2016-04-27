#
# Cookbook Name:: ubuntu_rsyslog
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#16.04 only
file '/etc/rsyslog.d/udp514.conf' do
  content "module(load=\"imudp\")\ninput(type=\"imudp\" port=\"514\")"
  owner 'root'
  group 'root'
  mode '0644'
end

service 'rsyslog' do
  action :restart
end

