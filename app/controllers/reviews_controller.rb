class ReviewsController < ApplicationController
include SessionsHelper

  def show 
    # byebug
    @review = Review.find(params[:id])
    @comments = Comment.where(review_id: params[:id])
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
