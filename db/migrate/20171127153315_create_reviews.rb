class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :rating
      t.references :location, foreign_key: true
      t.references :developpeur, foreign_key: true
      t.references :recruteur, foreign_key: true

      t.timestamps
    end
  end
end
