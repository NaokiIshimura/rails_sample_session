class HomeController < ApplicationController
  def index
  end

  def set_session_value_manually
    session[:test] = 'aaa'
    session[:random] = SecureRandom.urlsafe_base64
    redirect_to root_path
  end
end
