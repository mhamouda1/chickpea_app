if @configure_aws
  @aws_vars = { AWS_ACCOUNT_NUMBER: ENV['AWS_ACCOUNT_NUMBER'],
                AWS_REGION: ENV['AWS_REGION'],
                AWS_ACCESS_KEY_ID: ENV['AWS_ACCESS_KEY_ID'],
                AWS_SECRET_ACCESS_KEY: ENV['AWS_SECRET_ACCESS_KEY'] }

  @aws_vars.each do |k,v|
    env_variable = `source ~/.bash_profile && echo $#{k}`.chomp
    puts "please enter #{k}"
    @aws_vars[k] = gets.chomp
    `awk '!/#{k.to_s}/' ~/.bash_profile > temp && mv temp ~/.bash_profile`
    `echo "export #{k.to_s}=#{@aws_vars[k]}" >> ~/.bash_profile`
    `echo 'export TF_VAR_#{k.to_s}=\$#{k.to_s}' >> ~/.bash_profile` if @create_terraform_variables
  end

  #replace docker/development.env file with correct account number
  docker_development_env_path = "../chickpea-app/docker/web/development.env"
  new_docker_development_env = `cat #{docker_development_env_path}`.gsub(/AWS_ACCOUNT_NUMBER=\d+/,
                                                                         `source ~/.bash_profile && echo AWS_ACCOUNT_NUMBER=$AWS_ACCOUNT_NUMBER`.chomp)
  `echo '#{new_docker_development_env.chomp}' > #{docker_development_env_path}`
end

