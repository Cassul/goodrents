class AddConversationToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :conversation, :foreign_key
  end
end
