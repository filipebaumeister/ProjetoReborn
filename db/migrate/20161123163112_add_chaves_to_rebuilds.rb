class AddChavesToRebuilds < ActiveRecord::Migration
  def change
    add_reference :rebuilds, :REBUILDCAR, index: true, foreign_key: true
  end
end
