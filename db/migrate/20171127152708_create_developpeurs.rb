class CreateDeveloppeurs < ActiveRecord::Migration[5.1]
  def change
    create_table :developpeurs do |t|
      t.text :description
      t.string :available
      t.references :profil, foreign_key: true

      t.timestamps
    end
  end
end
