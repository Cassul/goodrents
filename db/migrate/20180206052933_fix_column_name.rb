class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :reviews, :type, :property_type
  end
end
