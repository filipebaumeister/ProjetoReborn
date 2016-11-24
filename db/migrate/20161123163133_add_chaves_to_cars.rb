class AddChavesToCars < ActiveRecord::Migration
  def change
    add_reference :cars, :REBUILDCAR, index: true, foreign_key: true
  end
end
