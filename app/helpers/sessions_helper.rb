# frozen_string_literal: true

module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    user.remember
    user.update_attribute(:remember_digest, user.remember_token)
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  def current_user
    return if cookies[:remember_token].nil?

    user_id = cookies.signed[:user_id]
    user ||= User.find_by(id: user_id)
    @current_user = user if user.authenticated?(:remember, cookies[:remember_token])
  end

  def logged_in?
    !current_user.nil?
  end

  # Forgets a persistent session.
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  # Logs out the current user.
  def log_out
    forget(current_user)
  end
end
