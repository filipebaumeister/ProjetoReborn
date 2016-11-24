class AddChavesToCars < ActiveRecord::Migration
  def change
    add_reference :cars, :rebuild_cars, index: true, foreign_key: true
  end
end
