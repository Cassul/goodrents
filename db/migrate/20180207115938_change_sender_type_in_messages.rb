class ChangeSenderTypeInMessages < ActiveRecord::Migration[5.1]
  def change
    change_column :messages, :sender_id, :integer
  end
end
