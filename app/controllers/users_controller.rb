class UsersController < ApplicationController

  def new
  end

  def login
  end

  def create
    user = User.new
    user.username = params[:user_name].downcase
    user.email = params[:email].downcase
    user.password = params[:password]
    user.save
    
    if user.save
      session[:user_id] = user.id
      session[:user_name] = user.username

      redirect_to '/'
    else 
      @errors = user.errors.full_messages

      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews
    @comments = @user.comments

  end
  
end
