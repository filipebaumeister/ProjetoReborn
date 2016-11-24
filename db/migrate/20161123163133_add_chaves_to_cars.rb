class AddChavesToCars < ActiveRecord::Migration
  def change
    add_reference :cars, :REBUILD_CAR, index: true, foreign_key: true
  end
end
