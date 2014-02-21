class User < ActiveRecord::Base
  
  require 'digest/sha1'

  def self.hashPassword(password) 
    hash_password = Digest::SHA1.hexdigest(password)
  end

  def self.authenticate(email, password)
      user = User.where(email: email).first
      if user.password_hash == self.hashPassword(password)
        true
      else
        false
      end
  end

end
