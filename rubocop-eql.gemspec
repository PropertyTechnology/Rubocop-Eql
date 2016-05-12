# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop/eql/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubocop-eql'
  spec.version       = RuboCop::Eql::VERSION
  spec.authors       = ['Jaimerson Araújo']
  spec.email         = ['jaimersonaraujo@gmail.com']

  spec.summary       = 'Rubocop cop for detecting use of == and recomending eql?'
  spec.homepage      = 'https://github.com/AdvancetoGO/Rubocop-Eql'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'TODO: Set to http://mygemserver.com'
  else
    raise 'RubyGems 2.0 or newer required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`
                       .split("\x0")
                       .reject { |f| f.match(%r{^(test|spec|features)/}) }

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # GEMS
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'

  spec.add_development_dependency 'byebug'

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-its'
  spec.add_development_dependency 'simplecov'
  spec.add_runtime_dependency     'rubocop'
  spec.add_development_dependency 'rubocop-rspec'

  spec.add_development_dependency 'guard-bundler'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'guard-rubocop'
end
