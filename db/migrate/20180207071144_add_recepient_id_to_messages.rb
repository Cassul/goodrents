class AddRecepientIdToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :recepient_id, :integer
  end
end
