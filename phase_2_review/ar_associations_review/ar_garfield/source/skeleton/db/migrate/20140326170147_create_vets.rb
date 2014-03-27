class CreateVets < ActiveRecord::Migration
  def change
    create_table :vets do |t|
      t.string :name

      t.timestamps
    end
  end
end
