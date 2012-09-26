class SessionController < ApplicationController
  skip_before_filter :login_required, :only => [:new, :create]

  def new
  end

  def create
    name = params[:session][:name]
    email = params[:session][:email]
    pass = params[:session][:password]

    user = User.find_by_name_and_email(name, email)
  
    if user && user.authenticate(pass)
      session[:user_id] = user.id
      redirect_to root_path
    else
      render :new, :notice => "Invalid login."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end