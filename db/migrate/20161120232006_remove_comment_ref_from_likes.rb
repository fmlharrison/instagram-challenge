class RemoveCommentRefFromLikes < ActiveRecord::Migration[5.0]
  def change
    remove_reference :likes, :comment, foreign_key: true
  end
end
