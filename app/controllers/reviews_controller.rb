class ReviewsController < ApplicationController
include SessionsHelper

def show 
  @review = Review.find(params[:id])
  @comments = Comment.where(review_id: params[:id])
end


end
