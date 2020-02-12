class ApplicationController < ActionController::Base
  include SessionsHelper

  def index
    render html: '', layout: true
  end

  def is_logged_in?
    unless logged_in?
      redirect_to login_path
    end
  end
end