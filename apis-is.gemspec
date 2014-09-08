# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'apis/version'

Gem::Specification.new do |spec|
  spec.name          = 'apis-is'
  spec.version       = Apis::VERSION
  spec.authors       = ['Skuli Oskarsson']
  spec.email         = ['skuli@codeiak.io']
  spec.summary       = 'Ruby toolkit for the apis.is API'
  spec.description   = 'A simple API wrapper for the apis.is API'
  spec.homepage      = 'https://github.com/SkuliOskarsson/apis-is-gem'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($RS)
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^spec\//)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'

  spec.add_dependency 'faraday', '~> 0.9', '>= 0.9.0'

end
