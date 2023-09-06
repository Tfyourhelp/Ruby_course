require './database.rb'
require 'bcrypt'

class User < Database
  attr_accessor :email, :password, :first_name, :last_name, :user_params

  def initialize(email, password, first_name, last_name, database_name = 'development_database.db')
    super(database_name)
    @email = email
    @password = password
    @first_name = first_name
    @last_name = last_name
    @user_params = get_user_params
    @userprocess = UserProcess.new()
  end

  def create_account
    @userprocess.create_account(@user_params)
  end

  def update_account
    @userprocess.update_account(@user_params)
  end

  private
  def get_user_params
    # Format thông tin của user account
    formated_email = email.downcase
    hashed_password = BCrypt::Password.create(password)
    name = first_name + ' ' + last_name
    return user_params = { email: formated_email, password: hashed_password, name: name }
  end
end

class UserProcess < Database

  def initialize(database_name = 'development_database.db')
    super(database_name)
  end

  def create_account(user_params)
    return puts 'Email already exists, please choose another!' if find_user_in_database(user_params) != nil
    # Lưu user account vào database
    find_database_instance.execute('INSERT INTO users (email, password, name) VALUES (:email, :password, :name)', user_params)
    find_database_instance.close
  end

  def update_account(user_params)
    return puts 'Email does not exists!' if find_user_in_database(user_params) == nil
    # Update user account trong database
    find_database_instance.execute('UPDATE users SET password = :password, name = :name WHERE email = :email', user_params)
    find_database_instance.close
  end

  def find_user_in_database(user_params)
    # Kiểm tra email của user account đã tồn tại chưa  |  email ben trai la cua sql , :email la gia tri value cua {email: user_params[:email]}
    users = find_database_instance.execute('SELECT * FROM users WHERE email = :email', email: user_params[:email]) # khi ma chi co 1 key value thi ruby k can phai {email: user_params[:email]}
    return users.first
  end
end