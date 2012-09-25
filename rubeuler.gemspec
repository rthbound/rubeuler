# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rubeuler/version"

Gem::Specification.new do |s|
  s.name        = "Rubeuler"
  s.version     = Rubeuler::VERSION
  s.authors     = ["Tad Hosford"]
  s.email       = ["tad.hosford@gmail.com"]
  s.homepage    = "http://github.com/rthbound/rubeuler"
  s.description = %q{ For Rubyists who love ProjectEuler.net }
  s.summary     = %q{Evaluates whether a block produces a predefined response. Returns diagnostics if the block's return value was expected.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "minitest"
  s.add_development_dependency "mocha"
  s.add_development_dependency "turn"

  s.add_development_dependency "rake"
  s.add_development_dependency "pry"
end
