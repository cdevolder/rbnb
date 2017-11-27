class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.date :check_in
      t.date :check_out
      t.string :status
      t.references :recruteur, foreign_key: true
      t.references :developpeur, foreign_key: true

      t.timestamps
    end
  end
end
