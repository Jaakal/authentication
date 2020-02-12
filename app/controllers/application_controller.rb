class ApplicationController < ActionController::Base
  include SessionsHelper

  def index
    render html: nil
  end
end