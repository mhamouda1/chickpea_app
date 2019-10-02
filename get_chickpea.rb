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

#installations
#bash install tmux.sh
#bash install vim.sh
#bash add_swap_memory.sh
#bash install_docker.sh
#bash install_docker_compose.sh

`mkdir -p #{@code_directory}`
Dir.chdir(@code_directory) do
  `git clone https://github.com/#{@github_repo}`
end

Dir.chdir(@working_directory) do
  p `pwd`
end
