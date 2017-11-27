class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.integer :level
      t.references :developpeur, foreign_key: true
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
