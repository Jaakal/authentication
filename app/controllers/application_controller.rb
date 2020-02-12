# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include SessionsHelper

  def index
    render html: '', layout: true
  end

  def check_if_logged_in?
    redirect_to login_path unless logged_in?
  end
end
