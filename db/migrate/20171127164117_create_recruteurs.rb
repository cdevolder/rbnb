class CreateRecruteurs < ActiveRecord::Migration[5.1]
  def change
    create_table :recruteurs do |t|
      t.text :description
      t.references :profil, foreign_key: true

      t.timestamps
    end
  end
end
