class CreateRebuildCars < ActiveRecord::Migration
  def change
    create_table :rebuild_cars do |t|
      t.references :car, index: true, foreign_key: true
      t.references :rebuild, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
