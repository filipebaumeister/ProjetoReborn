class AddChavesToPerfils < ActiveRecord::Migration
  def change
    add_reference :perfils, :perfil_processes, index: true, foreign_key: true
  end
end
