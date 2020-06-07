# frozen_string_literal: true

require File.expand_path('lib/validates_host/version', __dir__)

Gem::Specification.new do |gem|
  gem.name        = 'validates_host'
  gem.version     = ValidatesHost::VERSION
  gem.authors     = 'Paulo Henrique Lopes Ribeiro'
  gem.email       = 'plribeiro3000@gmail.com'
  gem.summary     = 'Validates Host, Domain and IP and test it with matchers in a simple way.'

  gem.files         = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)
  gem.test_files    = `git ls-files -- {test,spec,features,examples,gemfiles}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split('\n').map { |f| File.basename(f) }
  gem.require_paths = %w[lib]

  gem.license = 'MIT'

  gem.add_development_dependency 'coveralls'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rubocop'
  gem.add_development_dependency 'rubocop-rspec'
  gem.add_development_dependency 'shoulda-matchers'

  gem.add_dependency 'activemodel', '>= 3.0.0'
end
