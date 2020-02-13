# frozen_string_literal: true

module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  def current_user
    unless cookies[:remember_token].nil?
      @current_user ||= User.find_by(remember_digest: cookies[:remember_token])
    end
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
