class AddRecipientIdToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :recipient_id, :integer
  end
end
