class MessagesController < ApplicationController
  include MessagesHelper
  def new
    @sender = params['from']
    @recepient = params['to']
    @conversation = find_same_conversation_messages(@sender, @recepient)
    @conversation = @conversation.sort_by {|time| time.created_at }
  end

  def index
    @all_interactors_id = find_interactor
  end

  def create
    @message = Message.new
    @message.body = params[:body]
    @message.recepient_id = params[:recepient_id]
    @message.sender_id = session[:user_id]
    @message.save
  end
end
