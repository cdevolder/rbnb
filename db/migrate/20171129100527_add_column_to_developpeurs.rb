class AddColumnToDeveloppeurs < ActiveRecord::Migration[5.1]
  def change
    add_column :developpeurs, :address, :string
    add_column :developpeurs, :city, :string
  end
end
