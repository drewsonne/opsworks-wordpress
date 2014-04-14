#
# Cookbook Name:: wordpress
# Recipe:: deploy
#

include_recipe 'deploy'

node[:deploy].each do |application, deploy|
  if deploy[:application_type] != 'php'
    Chef::Log.debug("Skipping wordpress::deploy application #{application} as it is not an PHP app")
    next
  end

  wordpress_deploy_dir do
    user deploy[:user]
    path deploy[:deploy_to]  + "/current/wp-content"
  end
  
  wordpress_deploy_dir do
    user deploy[:user]
    path deploy[:deploy_to]  + "/current/cache"
  end
  
  
  wordpress_deploy_dir do
    user deploy[:user]
    path deploy[:deploy_to]  + "/current/logs"
  end

end

