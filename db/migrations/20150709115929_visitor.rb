Lotus::Model.migration do
  change do
    create_table :visitors do
      column :id, Integer, null: false, primary_key: true
      column :visited_at, DateTime, null: false
      column :ipaddress, String
      column :user_agent, String, text: true

      index [:visited_at, :ipaddress]
    end
  end
end
