class CreateAdoptions < ActiveRecord::Migration
  def change
    create_table :adoptions do |t|
      t.integer :cat_id
      t.integer :human_id
      t.integer :vet_id

      t.timestamps
    end
  end
end
