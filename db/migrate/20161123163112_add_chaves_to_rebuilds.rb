class AddChavesToRebuilds < ActiveRecord::Migration
  def change
    add_reference :rebuilds, :rebuild_car, index: true, foreign_key: true
  end
end
