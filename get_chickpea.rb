require 'open3'
#sets up a development server
####################################
######### --- Pre-requisites --- ###
####################################
#- ruby 2.0+
#- git 1.8+

####################################
######### --- Configuration --- ####
####################################
@debug = true
@add_swap_memory = true
@code_directory = "/root/code"
@app_name = "chickpea-app"
@working_directory = "#{@code_directory}/#{@app_name}"
@github_repo = "mhamouda1/chickpea-app"
@recommended_linux = "CentOS Linux release 7.6.1810"

####################################
######### --- Debug --- ############
####################################
if @debug
  p "using #{`printf $(cat /etc/*-release | head -n 1)`}, recommended Linux distribution is #{@recommended_linux}"
  p "using #{@working_directory} as working directory"
end

####################################
#### --- Directory Structure --- ###
####################################
if !File.directory?(@code_directory)
  `mkdir -p #{@code_directory}`
  Dir.chdir(@code_directory) do
    `git clone https://github.com/#{@github_repo}`
  end
end

####################################
######### --- Installations --- ####
####################################
#TODO: swap memory adds 4GB, want to add 2GB
if @add_swap_memory
  IO.popen("bash add_swap_memory.sh") { |io| while (line = io.gets) do puts line end }
end

@installations = ["tmux", "vim", "ag", "docker", "docker-compose"]
@installations.each do |installation|
  IO.popen("bash #{installation}.sh") { |io| while (line = io.gets) do puts line end } if `which #{installation} 2>&1` =~ /no #{installation}/
end
