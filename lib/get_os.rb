check_debian = `grep debian /etc/os-release | wc -l`.chomp
check_centos = `grep centos /etc/os-release | wc -l`.chomp

if check_debian.to_i > 0
  @os = "debian"
  `echo 'export OS=debian' >> ~/.bash_profile` if `cat ~/.bash_profile | grep 'export OS='`.empty?
elsif check_centos.to_i > 0
  @os = "centos"
  `echo 'export OS=centos' >> ~/.bash_profile` if `cat ~/.bash_profile | grep 'export OS='`.empty?
end
