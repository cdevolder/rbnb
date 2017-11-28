class AddPhotoToRecruteur < ActiveRecord::Migration[5.1]
  def change
    add_column :recruteurs, :photo, :string
  end
end
