require_relative 'modul'
class User
  attr_reader :username, :password, :password_confirm

  def initialize(username, password, password_confirm)
    @username = username
    @password = password
    @password_confirm = password_confirm
  end

  include Authentication
end

user = User.new("BaoDuy", "qwertyuiop", "qwertyuiop") #   def self.logout không có self
result = user.login(user.username, user.password, user.password_confirm)
p result
