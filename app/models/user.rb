class User < ApplicationRecord
  attr_accessor :remember_token
  before_create :remember
  
  has_secure_password
  
  # Returns a random digested token.
  def User.new_token
    token = SecureRandom.urlsafe_base64
    Digest::SHA1.hexdigest token.to_s
  end

  private

  # Remembers a user in the database for use in persistent sessions.
  def remember
    remember_token = User.new_token
    self.remember_digest = remember_token
  end
end
