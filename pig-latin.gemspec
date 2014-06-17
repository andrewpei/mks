# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pig/latin/version'

Gem::Specification.new do |spec|
  spec.name          = "pig-latin"
  spec.version       = Pig::Latin::VERSION
  spec.authors       = ["Andrew Pei"]
  spec.email         = ["andrewpei@gmail.com"]
  spec.summary       = %q{Used regex and other techniques to implement a simple pig latin to english (and reverse) translator.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"
end
