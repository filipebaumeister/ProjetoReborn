class AddRebuildCarToCars < ActiveRecord::Migration
  def change
    add_reference :cars, :rebuild_car, index: true, foreign_key: true
  end
end
