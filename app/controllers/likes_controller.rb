class LikesController < ApplicationController
  def create
    like = Like.new
    like.user_id = session[:user_id]
    like.review_id=params[:review_id]
    like.save
    render json: like
  end

  def destroy
    like=Like.where()
  end
end
