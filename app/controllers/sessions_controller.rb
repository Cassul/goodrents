class SessionsController < ApplicationController
  include SessionsHelper

  def create
    user = User.find_by(email:params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_name] = user.username
      redirect_to '/'
    else
      errors = "Email or Password is incorrect"

      redirect_to '/login', :flash => { :error => errors }
    end

  end

  def destroy
    session[:user_id] = nil
    session[:user_name] = nil
    redirect_to '/login'
  end
end
