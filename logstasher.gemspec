# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "logstasher/version"

Gem::Specification.new do |s|
  s.name        = "md-logstasher"
  s.version     = LogStasher::VERSION
  s.authors     = ["Devin Christensen"]
  s.email       = ["devin.christensen@moneydesktop.com"]
  s.homepage    = "https://github.com/moneydesktop/logstasher"
  s.summary     = %q{Awesome rails logs}
  s.description = %q{Awesome rails logs}
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "logstash-event", "~> 1.2"
  s.add_runtime_dependency "rails", ">= 4.2.0", "< 7"
  s.add_runtime_dependency "redis"

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "pry-nav"
  s.add_development_dependency "rspec"
  s.add_development_dependency "timecop"
end
