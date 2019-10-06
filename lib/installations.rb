if @add_swap_memory
  IO.popen("bash #{@scripts_dir}/#{@os}/add_swap_memory.sh") { |io| while (line = io.gets) do puts line end } if `cat /etc/fstab | grep swapfile`.empty?
end

@installations.each do |installation|
  if (`which #{installation} 2>&1` =~ /no #{installation}/) || (`which #{installation} 2>&1 | wc -l`.chomp.to_i == 0)
    IO.popen("bash #{@scripts_dir}/#{@os}/#{installation}.sh") { |io| while (line = io.gets) do puts line end }
  end
end
