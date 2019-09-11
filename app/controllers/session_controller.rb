class SessionController < ApplicationController
  def new
  end

  def create
    email = params[:session][:email]
    password = params[:session][:password]
    user = User.find_by(email: email.downcase)
    if(user && user.authenticate(password))
      log_in user
      redirect_back_or user
    else
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
