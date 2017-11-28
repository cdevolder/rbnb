class AddPriceToDeveloppeur < ActiveRecord::Migration[5.1]
  def change
    add_column :developpeurs, :price, :integer
  end
end
