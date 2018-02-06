class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :address
      t.string :suburb
      t.references :user, foreign_key: true
      t.integer :utilities
      t.integer :landlord
      t.integer :neighbours
      t.integer :neighbourhood
      t.text :comment
      t.timestamps
    end
  end
end
