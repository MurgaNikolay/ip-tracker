module Web::Controllers::Home
  class Stats
    include Web::Action
    expose :entries
    def call(params)
      @entries = VisitorRepository.by_visited
    end
  end
end
