#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, Yunli Qiu
#
# All rights reserved - Do Not Redistribute
#

package "httpd" do
  action :install
end

service "httpd" do
  action [ :enable, :start ]
end

node.default["apache"]["indexfile"] = "index2.html"
cookbook_file "/var/www/html/index.html" do
  # source "index.html"
  source node["apache"]["indexfile"]
  mode "0644"
end 
