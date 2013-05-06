Cache Control Image Assets in rails development
===================


## Usage
1.   Add it to Gemfile
```ruby
gem 'rack_image_assets_cache_control'
```
2.   setup in config/environments/development.rb
```ruby
  config.middleware.use(Rack::ImageAssetsCacheControl)
```
