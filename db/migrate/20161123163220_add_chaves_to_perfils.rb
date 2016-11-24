class AddChavesToPerfils < ActiveRecord::Migration
  def change
    add_reference :perfils, :PROCC, index: true, foreign_key: true
  end
end
