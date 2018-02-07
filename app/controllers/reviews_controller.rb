class ReviewsController < ApplicationController
include SessionsHelper
  
  def new
  end

  def show 
    # byebug
    @review = Review.find(params[:id])
    @comments = Comment.where(review_id: params[:id])
  end

  def destroy
    if logged_in? && @current_user.id === Review.find(params[:id])[:user_id]
      @review = review.destroy(params[:id])
      redirect_to hints_path
    else 
      redirect_to hint_path
    end
  end


end
