# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tanka/version'

Gem::Specification.new do |spec|
  spec.name          = 'tanka'
  spec.version       = Tanka::VERSION
  spec.authors       = ['Ryo Yoneyama (@yulii)']
  spec.email         = ['yone.info@gmail.com']

  spec.summary       = 'Generate structured object at random.'
  spec.description   = 'TODO: Write a longer description or delete this line.'
  spec.homepage      = "https://github.com/yulii/tanka"
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'i18n', '~> 0.5'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
end
