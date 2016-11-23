class AddPerfilProcessesToPerfilProcesses < ActiveRecord::Migration
  def change
    add_reference :perfil_processes, :perfil, index: true, foreign_key: true
    add_reference :perfil_processes, :procc, index: true, foreign_key: true
  end
end
