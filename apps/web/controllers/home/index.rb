module Web::Controllers::Home
  class Index
    include Web::Action

    def call(params)
      visitor = Visitor.new
      visitor.visited_at = DateTime.now
      visitor.ipaddress = params.env['CLIENT_IP'] || params.env['REMOTE_ADDR']
      visitor.user_agent = params.env['HTTP_USER_AGENT']
      VisitorRepository.create(visitor)

    end
  end
end
