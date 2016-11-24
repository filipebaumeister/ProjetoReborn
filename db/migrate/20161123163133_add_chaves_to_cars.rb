class AddChavesToCars < ActiveRecord::Migration
  def change
    add_reference :cars, :REBUILD_CARS, index: true, foreign_key: true
  end
end
