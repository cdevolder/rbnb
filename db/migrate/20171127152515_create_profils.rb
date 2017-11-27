class CreateProfils < ActiveRecord::Migration[5.1]
  def change
    create_table :profils do |t|
      t.string :name
      t.string :address
      t.string :city
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
