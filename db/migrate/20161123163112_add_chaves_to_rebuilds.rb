class AddChavesToRebuilds < ActiveRecord::Migration
  def change
    add_reference :rebuilds, :REBUILD_CAR, index: true, foreign_key: true
  end
end
