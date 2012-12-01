class SessionsController < ApplicationController
  def new
  end

  def create
   user = User.find_by_email(params[:email])
    if user != nil && user.authenticate(params[:password])
      session[:id] = user.id
      redirect_to user_url(user.id), :notice => "Welcome Back, #{user.first_name}"
    else
      redirect_to login_url, :notice => "Sorry, Try Again"
    end
  end
  
  def destroy
    session[:id] = nil
    redirect_to root_url
  end
end
