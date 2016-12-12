class AddChavesToRebuilds < ActiveRecord::Migration
  def change
    add_reference :rebuilds, :car, index: true, foreign_key: true
  end
end
