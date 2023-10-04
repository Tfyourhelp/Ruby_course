class User < ApplicationRecord
  attr_accessor :remember_token
  before_save {self.email = email.downcase} # goi la callback, co nghia la moi khi thuc hien active record se chay ham before_save

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i # regex nay khuyet o cho sau dau @ thi .. van dung , coi o test
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX } , uniqueness: { case_sensitive: false }
  validates :name, presence: true, length: { maximum: 50 } 
  
  has_secure_password
  validates :password, length: {minimum: 6}, presence: true, length: {minimum: 6}, allow_nil: true
# allow_nil trong validate này để empty password để cho green test, thực tế  khi empty password sẽ bị bắt bởi has secure password , việc này giúp tránh việc raise 2 lỗi giống nhau là empty password khi để password là space
  class << self # những thằng nằm trong đây đều là class method  của Uses và là instance method của class này
  # Returns the hash digest of the given string
    def digest(string) # class method == User.digest , self.digest
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
    end

  # Returns a random token
    def new_token # class method == User.new_token , self.digest
      SecureRandom.urlsafe_base64
    end
  end
# Remember a user in the database for use in persistent sessions
  def remember # tạo ra 1 remember_token mới --> mã hóa remember_token --> match nó với remember_digest --> gửi lên cookie 
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end
# allow users to log out -->  Forgets a user >< login user
  def forget 
    update_attribute(:remember_digest, nil)
  end
end
