class AddLongToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :long, :string
  end
end
