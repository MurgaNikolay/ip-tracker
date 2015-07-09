require 'lotus/model'
Dir["#{ __dir__ }/ip-tracker/**/*.rb"].each { |file| require_relative file }

Lotus::Model.configure do
  ##
  # Database adapter
  #
  # Available options:
  #
  #  * Memory adapter
  #    adapter type: :memory, uri: 'memory://localhost/ip-tracker_development'
  #
  #  * SQL adapter
  #    adapter type: :sql, uri: 'sqlite://db/ip-tracker_development.sqlite3'
  #    adapter type: :sql, uri: 'postgres://localhost/ip-tracker_development'
  #    adapter type: :sql, uri: 'mysql://localhost/ip-tracker_development'
  #
  # adapter type: :file_system, uri: ENV['IP_TRACKER_DATABASE_URL']
  adapter type: :sql, uri: ENV['IP_TRACKER_DATABASE_URL']

  ##
  # Database mapping
  #
  # Intended for specifying application wide mappings.
  #
  # You can specify mapping file to load with:
  #
  mapping "#{__dir__}/config/mapping"
  #
  # Alternatively, you can use a block syntax like the following:
  #

end.load!
