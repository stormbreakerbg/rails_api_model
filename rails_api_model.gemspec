lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rails_api_model/version'

Gem::Specification.new do |spec|
  spec.name          = 'rails_api_model'
  spec.version       = RailsApiModel::VERSION
  spec.authors       = ['Georgy Angelov']
  spec.email         = ['georgyangelov@gmail.com']

  spec.summary       = 'A better way to do RESTful APIs in Rails'
  spec.homepage      = 'https://github.com/stormbreakerbg/rails_api_model'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'sqlite3'

  spec.add_dependency 'activerecord'
  spec.add_dependency 'activesupport'
end
