class ReviewsController < ApplicationController

def show 
  @review = review.find(params[:id])
  @comments = Comment.find_where(review_id: params[:id])
end

end
