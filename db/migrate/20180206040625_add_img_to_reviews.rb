class AddImgToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :img, :string
  end
end
