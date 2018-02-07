class CommentsController < ApplicationController
  def new
  end

  def create
    @comment = Comment.new
    @comment.body = params[:body]
    @comment.user_id = params[:user_id]
    @comment.review_id = params[:review]
    if @comment.save
      redirect_to review_path(@comment.review_id)
    end
  end

  def destroy
    @comment = Comment.find(params['id'])
    if @comment.destroy
      redirect_to review_path(@comment.review_id)
    end
  end
end
