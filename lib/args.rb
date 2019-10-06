#get arguments
ARGV.each do |arg|
  @argument = arg.dup
  @argument[0..1] = "" #remove dashes
  field, value = @argument.split("=")
  instance_variable_set('@' + field, value)
end
ARGV.clear
