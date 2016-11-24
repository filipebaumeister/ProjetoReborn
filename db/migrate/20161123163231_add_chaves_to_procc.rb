class AddChavesToProcc < ActiveRecord::Migration
  def change
    add_reference :proccs, :perfil_processes, index: true, foreign_key: true
  end
end
