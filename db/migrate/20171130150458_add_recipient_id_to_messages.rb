class AddRecipientIdToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :recipient_id, :integer
  end
end
