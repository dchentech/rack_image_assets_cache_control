module Rack
  class ImageAssetsCacheControl
    def initialize(app, options={})
      @app = app
      @max_age = options["max-age"] || 300
    end

    def call(env)
      @status, @headers, @response = @app.call(env)

      # TODO replace with nice MIME library api
      # if @response.is_a?(Sprockets::StaticAsset) && @headers['Content-Type'].to_s.start_with?("image")
      if env['REQUEST_PATH'].match(/\.png|\.jpe?g|\.gif/i)
        @headers.merge!("Cache-Control" => "public, max-age=#{@max_age}")
      end

      [@status, @headers, @response]
    end

  end
end
