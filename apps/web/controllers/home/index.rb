module Web::Controllers::Home
  class Index
    include Web::Action

    def call(params)
      visitor = Visitor.new
      visitor.visited_at = DateTime.now
      visitor.ipaddress = params.env['REMOTE_ADDR']
      visitor.user_agent = params.env['HTTP_USER_AGENT']
      VisitorRepository.create(visitor)

    end
  end
end
#<Web::Controllers::Home::Index::Params:0x007fed3c25a400 @env={"GATEWAY_INTERFACE"=>"CGI/1.1", "PATH_INFO"=>"", "QUERY_STRING"=>"", "REMOTE_ADDR"=>"::1", "REMOTE_HOST"=>"localhost", "REQUEST_METHOD"=>"GET", "REQUEST_URI"=>"http://localhost:2300/", "SCRIPT_NAME"=>"/", "SERVER_NAME"=>"localhost", "SERVER_PORT"=>"2300", "SERVER_PROTOCOL"=>"HTTP/1.1", "SERVER_SOFTWARE"=>"WEBrick/1.3.1 (Ruby/2.2.2/2015-04-13)", "HTTP_HOST"=>"localhost:2300", "HTTP_CONNECTION"=>"keep-alive", "HTTP_CACHE_CONTROL"=>"max-age=0", "HTTP_ACCEPT"=>"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8", "HTTP_USER_AGENT"=>"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36", "HTTP_ACCEPT_ENCODING"=>"gzip, deflate, sdch", "HTTP_ACCEPT_LANGUAGE"=>"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4,uk;q=0.2", "rack.version"=>[1, 3], "rack.input"=>#<Rack::Lint::InputWrapper:0x007fed3b1b9ec0 @input=#<StringIO:0x007fed3b1c16c0>>, "rack.errors"=>#<Rack::Lint::ErrorWrapper:0x007fed3b1b9e98 @error=#<IO:<STDERR>>>, "rack.multithread"=>true, "rack.multiprocess"=>false, "rack.run_once"=>false, "rack.url_scheme"=>"http", "rack.hijack?"=>true, "rack.hijack"=>#<Proc:0x007fed3b1ba280@/Users/nikolay/.rvm/gems/ruby-2.2.2/gems/rack-1.6.4/lib/rack/lint.rb:525>, "rack.hijack_io"=>nil, "HTTP_VERSION"=>"HTTP/1.1", "REQUEST_PATH"=>"/", "router.request"=>#<HttpRouter::Request:0x007fed3c25b558 @rack_request=#<Rack::Request:0x007fed3c25b580 @env={...}>, @path=[""], @extra_env={}, @params=[], @acceptable_methods=#<Set: {}>>, "router.params"=>{}, "rack.request.query_string"=>"", "rack.request.query_hash"=>{}}, @raw=#<Lotus::Utils::Attributes:0x007fed3c259e60 @attributes={}>, @attributes=#<Lotus::Utils::Attributes:0x007fed3c259e60 @attributes={}>>

