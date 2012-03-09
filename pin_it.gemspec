# -*- encoding: utf-8 -*-
require File.expand_path('../lib/pin_it/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Joshua Warchol"]
  gem.email         = ["joshua@fanzter.com"]
  gem.description   = %q{Rails helpers for adding Pinterest.com "Pin It" buttons to views}
  gem.summary       = %q{Rails helpers for "Pin It" buttons}
  gem.homepage      = "http://github.com/fanzter/pin_it"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "pin_it"
  gem.require_paths = ["lib"]
  gem.version       = PinIt::VERSION

  gem.add_dependency "rails", ">= 2.3.0"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"

end
