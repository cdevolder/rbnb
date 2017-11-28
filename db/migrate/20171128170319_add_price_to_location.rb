class AddPriceToLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :price, :interger
  end
end
