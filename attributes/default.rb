case platform
	when "centos", "amazon", "redhat"
		default['vim']['packages'] = [
			"vim-enhanced"
		]
	when "debian", "ubuntu"
		default['vim']['packages'] = [
			"vim"
		]
end
