class RemoveCommentIdFromLikes < ActiveRecord::Migration[5.1]
  def change
    remove_column :likes, :comment_id, :integer
  end
end
