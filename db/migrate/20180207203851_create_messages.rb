class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.references :sender, index: true
      t.references :recepient, index: true
      t.text :body
      t.timestamps
    end
  end
end
