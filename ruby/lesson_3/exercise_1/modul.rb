require 'jaro_winkler'
require 'digest'

module Authentication
  @@common_passwords = %w[123456 password 12345678 qwerty 12345 123456789 football 1234 1234567
                          baseball welcome 1234567890 abc123 111111 1qaz2wsx dragon master monkey
                          letmein login princess qwertyuiop solo passw0rd starwars]

  def login(_username, password, password_confirm)
    au = { error: '', ok: '' }
    if password != password_confirm
      au[:error] = 'mismatch'
    elsif password.length < 8
      au[:error] = 'too short'
    else
      found_common = false
      @@common_passwords.each do |common_password|
        jaccard_distance = JaroWinkler.jaro_distance(password, common_password)
        next unless jaccard_distance >= 0.8

        au[:error] = 'common password'
        found_common = true
        break
      end
      if found_common != true
        password_hash = Digest::SHA256.hexdigest(password)
        au[:ok] = password_hash
      end
    end
    au
  end

  def logout
    puts 'User logged out'
  end
end

# p Authentication.login("BaoDuy", "qwertyuiop", "qwertyuiop") # self.login(username, password, password_confirm)
# p Authentication.login("BaoDuy", "herewego", "herewego") #   def self.logout
# p Authentication.login("BaoDuy", "qwertyuio", "qwertyuiop")
# p Authentication.login("BaoDuy", "hihi", "hihi")
