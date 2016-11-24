class AddPerfilToUser < ActiveRecord::Migration
  def change
    add_reference :users, :PERFIL, index: true, foreign_key: true
  end
end
