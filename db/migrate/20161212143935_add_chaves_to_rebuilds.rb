class AddChavesToRebuilds < ActiveRecord::Migration
  def change
    add_reference :rebuilds, :CAR, index: true, foreign_key: true
  end
end
