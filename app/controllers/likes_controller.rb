class LikesController < ApplicationController
  def create
    like = Like.new
    like.user_id = session[:user_id]
    like.review_id=params[:review_id]
    like.save
    render json: like
  end

  def destroy
    like=Like.find_by(review_id: params[:review_id], user_id: session[:user_id])
    like.destroy
    render json: like
  end
end
