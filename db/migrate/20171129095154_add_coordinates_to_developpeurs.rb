class AddCoordinatesToDeveloppeurs < ActiveRecord::Migration[5.1]
  def change
    add_column :developpeurs, :latitude, :float
    add_column :developpeurs, :longitude, :float
  end
end
