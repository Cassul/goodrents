class SessionsController < ApplicationController
  include SessionsHelper
  
  def create
    user=User.find_by(email:params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id]=user.id
      session[:user_name]=user.username
      redirect_to '/'
    else
      render :login
    end

  end

  def destroy
    session[:user_id]=nil
    session[:user_name]=nil
    redirect_to '/login'
  end
end
