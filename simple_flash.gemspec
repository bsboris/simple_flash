# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_flash/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_flash"
  spec.version       = SimpleFlash::VERSION
  spec.authors       = ["Eugene Likholetov"]
  spec.email         = ["bsboris@gmail.com"]

  spec.summary       = %q{I18n for flashes in Rails.}
  spec.description   = %q{I18n for flashes in Rails.}
  spec.homepage      = "https://github.com/bsboris/simple_flash"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "actionpack", ">= 3.0.0"

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
