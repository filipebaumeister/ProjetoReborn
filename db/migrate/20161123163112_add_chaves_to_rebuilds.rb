class AddChavesToRebuilds < ActiveRecord::Migration
  def change
    add_reference :rebuilds, :rebuild_cars, index: true, foreign_key: true
  end
end
