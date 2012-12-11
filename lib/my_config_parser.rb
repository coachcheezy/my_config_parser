require "my_config_parser/version"

class MyConfigParser
  def initialize(file)
    @vars=Hash.new
    IO.foreach(file) do |line|
      #Remove leading/trailing spaces
      line.strip!
      
      # Check if this line in the configuration file is commented out or is blank, ignore if is is blank/commented out
      unless line.match(/^\#/) or line.match(/^$/)
        
        # Add param/value to hash
        if line.match(/\s*=\s*/)
          param, value = line.split("=", 2)
          param.strip!
          value.strip!
          @vars[param] = convert_to_boolean(value)
        end
      end
    end
  end
  
  def method_missing(method_name, *args)    
    if value = @vars[method_name.to_s]
      return value
    else
      return nil
    end
  end
  
  def convert_to_boolean(value)
    if value == "true"
      return true
    elsif value == "false"  
      return false
    else
      return value
    end
  end
end