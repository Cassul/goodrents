class UsersController < ApplicationController

  def new
  end

  def login
  end

  def create
    user = User.new
    user.username = params[:user_name]
    user.email = params[:email]
    user.password = params[:password]
    user.save

    session[:user_id] = user.id
    session[:user_name] = user.username

    property = Review.new
    property.address = params[:address]
    property.suburb = params[:suburb]
    property.user_id = session[:user_id]
    property.utilities = params[:utility]
    property.landlord = params[:landlord]
    property.neighbours = params[:neighbours]
    property.neighbourhood = params[:neighbourhood]
    property.comment = params[:comment]
    property.property_type=params[:type]
    property.bedrooms  =params[:bedroom]
    property.img =params[:image]
    if property.save
      redirect_to '/'
    else
      render :new
    end
  end

  def show
    @user=User.find(params[:id])
    @reviews=@user.reviews
    @comments=@user.comments

  end
end
