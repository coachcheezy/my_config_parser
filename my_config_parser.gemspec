# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "my_config_parser/version"

Gem::Specification.new do |s|
  s.name        = "my_config_parser"
  s.version     = MyConfigParser::VERSION
  s.authors     = ["Eugene Correia"]
  s.email       = ["cheezy2022@hotmail.com"]
  s.homepage    = ""
  s.summary     = %q{This gem will parse a simple configuration file}
  s.description = %q{This gem will parse a simple configuration file}

  s.rubyforge_project = "my_config_parser"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
