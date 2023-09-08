require 'sqlite3'

class Database
  attr_accessor :database_name

  def initialize(database_name)
    @database_name = database_name
  end

  def find_database_instance
    SQLite3::Database.new(database_name)
  end
end