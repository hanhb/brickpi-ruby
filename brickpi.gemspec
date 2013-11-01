# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'brickpi/version'

Gem::Specification.new do |spec|
  spec.name          = "brickpi"
  spec.version       = BrickPi::VERSION
  spec.authors       = ["James Smith"]
  spec.email         = ["james@floppy.org.uk"]
  spec.description   = %q{Ruby driver for the BrickPi from Dexter Industries}
  spec.summary       = %q{Ruby driver for the BrickPi}
  spec.homepage      = "https://github.com/Floppy/brickpi-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "travis"
end
