class ReviewsController < ApplicationController
	include SessionsHelper

	def show 
	  @review = Review.find(params[:id])
	  @comments = Comment.where(review_id: params[:id])
	end

	def create
  		property = Review.new
 		property.address = params[:address]
    	property.suburb = params[:suburb]
    	property.user_id = session[:user_id]
    	property.utilities = params[:utility]
    	property.landlord = params[:landlord]
    	property.neighbours = params[:neighbours]
    	property.neighbourhood = params[:neighbourhood]
    	property.comment = params[:comment]
    	property.property_type = params[:type]
    	property.bedrooms = params[:bedroom]
    	property.img = params[:image]
    	property.lat = params[:lat]
    	property.long = params[:long]

    	if property.save
	        redirect_to '/'
    	else
    		@errors = property.errors.full_message
    		render :create
    	end
	end
  
  def destroy
    if logged_in? && @current_user.id === Review.find(params[:id])[:user_id]
      @review = Review.destroy(params[:id])
      redirect_to '/'
    else 
      redirect_to review_path
    end
  end
end
