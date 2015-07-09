collection :visitors do
  entity Visitor
  repository VisitorRepository

  attribute :id, Integer
  attribute :visited_at, DateTime
  attribute :ipaddress, String
  attribute :user_agent, String
end
