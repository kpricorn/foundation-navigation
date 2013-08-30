# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'foundation-navigation/version'

Gem::Specification.new do |spec|
  spec.name          = "foundation-navigation"
  spec.version       = FoundationNavigation::VERSION
  spec.authors       = ["Sebastian de Castelberg"]
  spec.email         = ["sebu@kpricorn.org"]
  spec.description   = %q{Helpers to generate a Zurb Foundation style navigation}
  spec.summary       = %q{Helpers to generate a Zurb Foundation style navigation}
  spec.homepage       = 'https://github.com/kpricorn/foundation-navigation'
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency 'rspec', '~> 2.14.1'
  spec.add_development_dependency 'rspec-html-matchers', '~> 0.4.3'
  spec.add_development_dependency 'padrino-helpers', '~> 0.11.2'
  spec.add_development_dependency 'guard-rspec', '~> 3.0.2'
  spec.add_development_dependency "rake"
end
