Gem::Specification.new do |s|
  s.name        = 'sepomex-acrogenesis-ruby'
  s.version     = '0.4.0'
  s.date        = '2019-10-10'
  s.summary     = "Ruby Bindings for SEPOMEX API"
  s.description = "Ruby Bindings for SEPOMEX API"
  s.files       = ["lib/sepomex-hckdrk-ruby.rb"]
  s.authors     = ["Yellowme"]
  s.email       = 'hola@yellowme.mx'
  s.homepage    = 'https://rubygems.org/gems/sepomex-hckdrk-ruby'
  s.license      = 'MIT'

  s.add_dependency 'httparty'

  s.add_runtime_dependency 'json', '~> 1.8'
end