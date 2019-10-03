@linux_aliases = {
  tf: "terraform",
  tfa: "terraform apply -auto-approve",
  tfd: "terraform destroy -force",
  wip: "git add . && git commit -m \'wip\' && git push",
  gs: "git status",
  gaa: "git add .",
  gau: "git add -u",
  k: "kubectl",
  d: "docker",
  dc: "docker-compose",
  sbp: "source ~/.bash_profile",
  cbp: "cat ~/.bash_profile",
  ebp: "vim ~/.bash_profile",
}
@linux_aliases.each do |k,v|
  `echo 'alias #{k}="#{v}"' >> ~/.bash_profile` if `cat ~/.bash_profile | grep 'alias #{k}='`.empty?
end

