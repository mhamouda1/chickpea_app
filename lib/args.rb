#get arguments
ARGV.each do |arg|
  @argument = arg.dup
  @argument[0] = "" if @argument.include?("-")
  @argument[0..1] = "" if @argument.include?("--")
  field, value = @argument.split("=")
  instance_variable_set('@' + field, value)
end
ARGV.clear
