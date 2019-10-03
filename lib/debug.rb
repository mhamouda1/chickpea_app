if @debug
  puts "using #{`printf $(cat /etc/*-release | head -n 1)`}, recommended Linux distribution is #{@recommended_linux}".blue
  puts "using #{@working_directory} as working directory".blue
end
`ps aux | grep -ie ruby | awk '{print $2}' | xargs kill -9` if @kill_all_ruby_processes
