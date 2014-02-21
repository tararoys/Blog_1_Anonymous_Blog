class User < ActiveRecord::Base
  
  require 'digest/sha1'

  def self.hashPassword(password) 
    hash_password = Digest::SHA1.hexdigest(password)
  end

end
