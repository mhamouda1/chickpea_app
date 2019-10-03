####################################
######### --- Pre-requisites --- ###
####################################
#- ruby 2.3+
#- git 1.8+

require 'pry'
require 'colorize'
require 'open3'

require_relative 'lib/config'
require_relative 'lib/aws_variables'
require_relative 'lib/debug'
require_relative 'lib/directory_structure'
require_relative 'lib/installations'
require_relative 'lib/linux_aliases'

puts "Setup complete!".green
