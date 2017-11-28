class AddLocationToMessages < ActiveRecord::Migration[5.1]
  def change
    add_reference :messages, :location, foreign_key: true
  end
end
