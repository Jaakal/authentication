class User < ApplicationRecord
  attr_accessor :remember_token
  # before_create :remember
  
  has_secure_password
  
  # Returns a random digested token.
  def User.new_token
    token = SecureRandom.urlsafe_base64
    Digest::SHA1.hexdigest token.to_s
  end

  def remember
    self.remember_token = User.new_token
    self.remember_digest = remember_digest
  end

  def authenticate?(token)
    digest = send(token)
    return false if digest.nil?
    Digest::SHA1.hexdigest(digest) == token
  end
  private

  # Remembers a user in the database for use in persistent sessions.
end
