define :wordpress_deploy_dir do

  if File.directory?(params[:path])
    bash "chmod wp-content" do
      user params[:user]
      cwd params[:path]
      code "chmod -R g+rwX #{params[:path]}"
    end
  end

end
