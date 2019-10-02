require 'open3'
#sets up a development server
#pre-requisites
#- ruby 2.0+
#- git 1.8+

#configuration variables
@debug = true
@code_directory = "/root/code"
@app_name = "chickpea-app"
@working_directory = "#{@code_directory}/#{@app_name}"
@github_repo = "mhamouda1/chickpea-app"
@recommended_linux = "CentOS Linux release 7.6.1810"

#debug messages
if @debug
  p "using #{`printf $(cat /etc/*-release | head -n 1)`}, recommended Linux distribution is #{@recommended_linux}"
  p "using #{@working_directory} as working directory"
end

#create directories and pull code
if !File.directory?(@code_directory)
  `mkdir -p #{@code_directory}`
  Dir.chdir(@code_directory) do
    `git clone https://github.com/#{@github_repo}`
  end
end

#installations
@installations = ["tmux", "vim", "silver_searcher", "docker", "docker-compose"]
@installations.each do |installation|
  IO.popen("bash #{installation}.sh") { |io| while (line = io.gets) do puts line end } if `which #{installation} 2>&1` =~ /no #{installation}/
  # IO.popen('bash vim.sh') { |io| while (line = io.gets) do puts line end }
  # IO.popen('bash silver_searcher.sh') { |io| while (line = io.gets) do puts line end }
  #bash install vim.sh
  #bash install silver_searcher.sh
  #bash add_swap_memory.sh
  #bash install_docker.sh
  #bash install_docker_compose.sh
end
