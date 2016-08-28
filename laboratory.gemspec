# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'laboratory/version'

Gem::Specification.new do |spec|
  spec.name          = "laboratory"
  spec.version       = Laboratory::VERSION
  spec.authors       = ["Emil Soman"]
  spec.email         = ["emil.soman@gmail.com"]

  spec.summary       = %q{A rack middleware that helps developers turn on/off feature switches}
  spec.homepage      = "https://github.com/code-mancers/laboratory-rack"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rack", "~> 1.2.0"
end
