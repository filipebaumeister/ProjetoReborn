class AddChavesToRebuildCar < ActiveRecord::Migration
  def change
    add_reference :rebuild_cars, :car, index: true, foreign_key: true
    add_reference :rebuild_cars, :rebuild, index: true, foreign_key: true
  end
end
