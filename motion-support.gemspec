# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = "motion-devices"
  s.version     = '0.0.1'
  s.authors     = ["Thomas Kadauke"]
  s.email       = ["thomas.kadauke@googlemail.com"]
  s.homepage    = "https://github.com/tkadauke/motion-devices"
  s.summary     = "Distribute RubyMotion apps to multiple devices"
  s.description = "RubyMotion rake task that allows easy distribution to multiple devices"

  s.files         = `git ls-files`.split($\)
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_development_dependency 'rake'
end
