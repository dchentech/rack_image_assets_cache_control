Gem::Specification.new do |s|
  s.name        = 'rack_image_assets_cache_control'
  s.version     = '0.2.1'
  s.date        = '2013-07-30'
  s.summary     = "Cache Control Image Assets in rails development"
  s.description = s.summary
  s.authors     = ["mvj3"]
  s.email       = 'mvjome@gmail.com'
  s.homepage    = 'https://github.com/eoecn/rack_image_assets_cache_control'
  s.require_paths = ["lib"]
  s.license       = "MIT"

  s.add_dependency "rack"
  s.add_dependency "mime-types"

  s.files = `git ls-files`.split("\n")
end
