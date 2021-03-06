#
# Cookbook Name:: vim
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node['vim']['packages'].each{|value|
	package value do
		action :install
	end
}

directory '/etc/vim' do
	owner 'root'
	group 'root'
	mode 00755
end

remote_file "/etc/vim/vimrc" do
	owner "root"
	group "root"
	mode "0644"
	source "https://raw.githubusercontent.com/karuru6225/dotfiles/master/.vimrc"
end

link '/etc/vimrc' do
	to '/etc/vim/vimrc'
	link_type :symbolic
end
