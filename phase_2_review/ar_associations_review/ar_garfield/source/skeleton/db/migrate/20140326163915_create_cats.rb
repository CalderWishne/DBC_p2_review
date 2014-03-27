class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.string :favorite_food
      t.integer :top_cat_id

      t.timestamps
    end
  end
end
