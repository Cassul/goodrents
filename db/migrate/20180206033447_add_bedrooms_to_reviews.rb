class AddBedroomsToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :bedrooms, :integer
  end
end
