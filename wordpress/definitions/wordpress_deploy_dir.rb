define :wordpress_deploy_dir do

  bash "chmod wp-content" do
    user params[:user]
    cwd params[:path]
    code "chmod -R g+rwX #{params[:path]}"
    only_if { File.directory?(params[:path]) }
  end

end
