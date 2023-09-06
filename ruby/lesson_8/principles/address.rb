require './database.rb'
require './user.rb'

class Address < Database
  attr_accessor :city, :street

  def initialize(city, street, database_name = 'development_database.db')
    super(database_name)
    @city = city
    @street = street
  end

  def print_user_info_and_address(user)
    # In ra thông tin user và thông tin address dựa trên điều kiền query của user
    user = UserProcess.new().find_user_in_database(user.user_params)
    if  user != nil
      puts "Email: #{user[1]}, Name: #{user[3]}, City: #{city}, Street: #{street}"
    else
      puts "City: #{city}, Street: #{street}"
    end
  end
end