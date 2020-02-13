# frozen_string_literal: true

class User < ApplicationRecord
  attr_accessor :remember_token
  has_many :posts, dependent: :destroy
  has_secure_password
  before_create :remember

  # Returns a random digested token.
  def self.new_token
    token = SecureRandom.urlsafe_base64
    Digest::SHA1.hexdigest token.to_s
  end

  def authenticate?(remember_token)
    remember_token == remember_token
  end

  # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, self.remember_token)
  end
end
