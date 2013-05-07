module Rack
  class ImageAssetsCacheControl
    ImagePostfixRegexp = Regexp.new(
      MIME::Types.to_a.select {|t| t.media_type == 'image' }.map {|i| i.raw_sub_type }.reject {|i| i.match(/\.|\-|\+/) }.map {|i| "\.#{i}" }.join("|"),
      'i'
    )

    def initialize(app, options={})
      @app = app
      @max_age = options["max-age"] || 300
    end

    def call(env)
      @status, @headers, @response = @app.call(env)

      # if @status is 304, then @headers and @response will be blank,
      # so @headers['Content-Type'].to_s.start_with?("image") will not work
      if env['REQUEST_PATH'].match(ImagePostfixRegexp)
        @headers.merge!("Cache-Control" => "public, max-age=#{@max_age}")
      end

      [@status, @headers, @response]
    end

  end
end
