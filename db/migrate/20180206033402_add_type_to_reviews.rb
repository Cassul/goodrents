class AddTypeToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :type, :string
  end
end
