require './database.rb'
require './user.rb'

class Address 
  attr_accessor :city, :street

  def initialize(city, street, database_name = 'development_database.db')
    @city = city
    @street = street
  end

  def print_user_info_and_address(user)
    user.print_user_info()
    print "City: #{city}, Street: #{street}"
    print "\n"
  end
end