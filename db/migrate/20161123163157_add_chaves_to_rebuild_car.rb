class AddChavesToRebuildCar < ActiveRecord::Migration
  def change
    add_reference :rebuild_cars, :CAR, index: true, foreign_key: true
    add_reference :rebuild_cars, :REBUILD, index: true, foreign_key: true
  end
end
