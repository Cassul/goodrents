class AddLatToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :lat, :string
  end
end
