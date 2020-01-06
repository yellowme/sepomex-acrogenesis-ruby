$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "sepomex_acrogenesis/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "sepomex-acrogenesis"
  spec.version     = SEPOMEX_Acrogenesis::VERSION
  spec.date        = '2019-10-10'
  spec.summary     = "Ruby Bindings for SEPOMEX Acrogenesis API"
  spec.description = "Ruby Bindings for SEPOMEX Acrogenesis API"
  spec.files       = ["lib/sepomex-acrogenesis.rb"]
  spec.authors     = ["Yellowme"]
  spec.email       = 'hola@yellowme.mx'
  spec.homepage    = 'https://rubygems.org/gems/sepomex-acrogenesis-ruby'
  spec.license      = 'MIT'

  spec.add_dependency 'httparty'
  spec.add_dependency "json"
  spec.add_dependency 'activesupport'

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "simplecov"
end
