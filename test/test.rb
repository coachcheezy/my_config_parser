require 'my_config_parser'

m = MyConfigParser.new("test.config")
puts m.inspect
puts m.log_file_paths