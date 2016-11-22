class CreateRebuildCars < ActiveRecord::Migration
  def change
    create_table :rebuild_cars do |t|
      t.references :CAR, index: true, foreign_key: true
      t.references :REBUILD, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
