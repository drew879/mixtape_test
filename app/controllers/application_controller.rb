class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :login_required

  private
  
  def login_required
    redirect_to login_path, :notice => "You must be logged in to access #{request.path}." unless logged_in?
  end

  def logged_in?
    @user = User.find(session[:user_id]) if session[:user_id]
  end
end
