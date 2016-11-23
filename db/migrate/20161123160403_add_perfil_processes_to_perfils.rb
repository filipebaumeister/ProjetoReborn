class AddPerfilProcessesToPerfils < ActiveRecord::Migration
  def change
    add_reference :perfils, :procc, index: true, foreign_key: true
  end
end
