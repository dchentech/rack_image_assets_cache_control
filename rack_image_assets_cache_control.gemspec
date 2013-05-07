Gem::Specification.new do |s|
  s.name        = 'rack_image_assets_cache_control'
  s.version     = '0.2'
  s.date        = '2013-05-07'
  s.summary     = "Cache Control Image Assets in rails development"
  s.description = s.summary
  s.authors     = ["mvj3"]
  s.email       = 'mvjome@gmail.com'
  s.homepage    = 'https://github.com/eoecn/rack_image_assets_cache_control'
  s.require_paths = ["lib"]
  s.add_dependency "rack"

  s.files = `git ls-files`.split("\n")
end
