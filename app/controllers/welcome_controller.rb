class WelcomeController < ApplicationController

	def index
	end

	def api_show
		reviews = Review.where(address: params[:searchAddress])
		
		render json: reviews
	end

end
