class MessagesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    # @received=User.comments
    # @sent
  end
end
