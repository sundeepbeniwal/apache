#
# Cookbook:: Apache
# Recipe:: setup
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content '<h1>Hello, World!</h1>'
end

service 'httpd' do
  action [ :enable, :start ]
end