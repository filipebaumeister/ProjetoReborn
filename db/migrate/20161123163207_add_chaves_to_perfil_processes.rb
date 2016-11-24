class AddChavesToPerfilProcesses < ActiveRecord::Migration
  def change
    add_reference :perfil_processes, :PERFIL, index: true, foreign_key: true
    add_reference :perfil_processes, :PROCC, index: true, foreign_key: true
  end
end
