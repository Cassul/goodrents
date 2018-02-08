module MessagesHelper

  def find_interactor
    @interactors = Array.new
    @sent_messages = Message.where("sender_id = #{session[:user_id]}")
    @received_messages = Message.where("recepient_id = #{session[:user_id]}")
    @all_user_messages = @sent_messages + @received_messages
    @all_user_messages.each do |message|
      if message.recepient_id === session[:user_id]
        @interactors.push(message.sender_id)
      elsif message.sender_id === session[:user_id]
        @interactors.push(message.recepient_id)
      end
    end
    @interactors.uniq
  end

  def find_same_conversation_messages(sender, recepient)
    Message.where("sender_id = #{sender} AND recepient_id = #{recepient}") + Message.where("recepient_id = #{sender} AND sender_id = #{recepient}")
  end
end
