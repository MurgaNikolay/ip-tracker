class VisitorRepository
  include Lotus::Repository
  def self.paginate(limit: 10, offset: 0)
    query do
      limit(limit).offset(offset)
    end
  end

  def self.by_visited
    query do
      order(:visited_at)
    end
  end
end
