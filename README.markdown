Cache Control Image Assets in rails development
===================
Enable image caching in Rails development mode.

原理见 http://code.eoe.cn/6/title/Unicorn和Nginx部署Rails应用的css__js__img等静态资源缓存使用总结


## Usage
* Add it to Gemfile

```ruby
gem 'rack_image_assets_cache_control'
```
* setup in config/environments/development.rb

```ruby
  config.middleware.use(Rack::ImageAssetsCacheControl)
```
