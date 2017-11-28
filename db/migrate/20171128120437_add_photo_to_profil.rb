class AddPhotoToProfil < ActiveRecord::Migration[5.1]
  def change
    add_column :profils, :photo, :string
  end
end
