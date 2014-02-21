class User < ActiveRecord::Base

  validates :email, :presence => true
  validates :email, :uniqueness => true

  validates :email,
            :format => {
              :with    => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i,
              :message => "Only letters allowed" }#[better to validate emails with a gem]( http://www.stormconsultancy.co.uk/blog/development/validating-email-addresses-in-rails/)
   validates :password_hash, :presence => true
  
  require 'digest/sha1'

  def self.hashPassword(password) 
    hash_password = Digest::SHA1.hexdigest(password)
  end

  def self.authenticate(email, password)
      
      user = User.where(email: email).first
      if user.password_hash == self.hashPassword(password)
        user
      else
        nil
      end
  end

end
