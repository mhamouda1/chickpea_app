if !File.directory?(@code_directory)
  `mkdir -p #{@code_directory}`
  Dir.chdir(@code_directory) do
    `git clone https://github.com/#{@github_repo}`
  end
end
