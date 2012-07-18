# -*- encoding: utf-8 -*-
require File.expand_path('../lib/validates_host/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Paulo Henrique Lopes Ribeiro"]
  gem.email         = %q{plribeiro3000@gmail.com}
  gem.description   = %q{Validates Host, Domain and IP}
  gem.summary       = %q{Host Validation Gem}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "validates_host"
  gem.require_paths = ["lib"]
  gem.version       = ValidatesHost::VERSION

  gem.add_dependency("activerecord", ">= 3.0.0")
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", ">= 2.0.0"
  gem.add_development_dependency "shoulda-matchers", ">= 1.0.0"
  gem.add_development_dependency "remarkable_activerecord", "= 4.0.0.alpha4"
  gem.add_development_dependency "sqlite3"
end
