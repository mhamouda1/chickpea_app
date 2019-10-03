if @add_swap_memory
  IO.popen("bash #{@scripts_dir}/add_swap_memory.sh") { |io| while (line = io.gets) do puts line end } if `cat /etc/fstab | grep swapfile`.empty?
end

@installations.each do |installation|
  IO.popen("bash #{@scripts_dir}/#{installation}.sh") { |io| while (line = io.gets) do puts line end } if `which #{installation} 2>&1` =~ /no #{installation}/
end
