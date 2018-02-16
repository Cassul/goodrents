class ReviewsController < ApplicationController
	include SessionsHelper


	def index
	    if params['suburb']
	    	@reviews_of_same_address = Review.where(suburb: params['suburb'])
	    end
	    @reviews = Review.where(address: params['address'])
 	 end



	def show 

		# pls dont remove this method,otherwise Like button will no longger work
	  @review = Review.find(params[:id])
	  @comments = Comment.where(review_id: params[:id])
	  @liked = Like.where(review_id: params[:id], user_id: session[:user_id]).count > 0

	end

	def new
	end

	def existing
		@address = params[:address]
		@suburb = params[:suburb]
		@lat = params[:lat]
		@long = params[:long]

		render :new
	end

	def new_id
		@id = params[:id]
		review = Review.find_by(id: @id)
		@address = review.address
		@suburb = review.suburb
		@lat = review.lat
		@long = review.long	
		
		render :new
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
  		redirect_to '/reviews/' + property.id.to_s
   	else
  		@errors = property.errors.full_messages

  		if params[:review_id]
  			redirect_to '/reviews/new/' + params[:review_id]
  		else	
  			render :new
  		end
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

	def api_show
		reviews = Review.where(address: params[:searchAddress])

		review_array = []
		reviews.each do |review|
		review_obj = {}
		review_obj["review_details"] = review
		review_obj["username"] = review.user.username
		review_array << review_obj
		end
		
		render json: review_array
	end

	def api_show_suburb
		reviews = Review.where(suburb: params[:suburb])
		render json: reviews
	end
end
