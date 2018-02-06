class CommentsController < ApplicationController
  def new
  end

  def create
    @comment = Comment.new
    @comment.body = params[:body]
    @comment.user_id = @current_user.id
    @comment.review_id = params['hint']
    @comment.save
    flash.notice = "comment added"
    redirect_to hint_path(@comment.hint_id)
  end
end
