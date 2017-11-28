class AddPhotoToDeveloppeur < ActiveRecord::Migration[5.1]
  def change
    add_column :developpeurs, :photo, :string
  end
end
