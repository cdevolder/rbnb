class AddSenderIdToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :sender_id, :integer
  end
end
