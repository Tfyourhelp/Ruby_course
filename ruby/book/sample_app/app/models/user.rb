class User < ApplicationRecord

  before_save {self.email = email.downcase} # goi la callback, co nghia la moi khi thuc hien active record se chay ham before_save

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i # regex nay khuyet o cho sau dau @ thi .. van dung , coi o test
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX } , uniqueness: { case_sensitive: false }
  validates :name, presence: true, length: { maximum: 50 } 
  
  has_secure_password
  validates :password, length: {minimum: 6}, presence: true, length: {minimum: 6}
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
